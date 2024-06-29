package com.fyp.Admin.PastReport;

import com.fyp.model.bean.PastProject;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class AddPastReportDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/fyp?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "";
    private Connection jdbcConnection;

    protected void connect() throws SQLException {
        if (jdbcConnection == null || jdbcConnection.isClosed()) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                throw new SQLException(e);
            }
            jdbcConnection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        }
    }

    protected void disconnect() throws SQLException {
        if (jdbcConnection != null && !jdbcConnection.isClosed()) {
            jdbcConnection.close();
        }
    }

    public int generateId() {
        Random random = new Random();
        return random.nextInt(1000); // Generates a random digit number
    }

    public List<PastProject> listPastReports() throws SQLException {
        List<PastProject> listPastReports = new ArrayList<>();
        String sql = "SELECT * FROM past_project";
        connect();

        try (PreparedStatement statement = jdbcConnection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                int proId = resultSet.getInt("pro_ID");
                int lId = resultSet.getInt("l_id");
                int adminId = resultSet.getInt("admin_id");
                String studentName = resultSet.getString("student_name");
                int studentId = resultSet.getInt("student_id");
                String proTitle = resultSet.getString("pro_title");
                String session = resultSet.getString("session");
                String proPdf = resultSet.getString("pro_pdf");

                PastProject pastReport = new PastProject(proId, lId, adminId, studentName, studentId, proTitle, session, proPdf);
                listPastReports.add(pastReport);
            }
        } finally {
            disconnect();
        }

        return listPastReports;
    }

    public void addPastReport(PastProject ps) throws SQLException {
        String sqlPastReport = "INSERT INTO past_project (pro_ID, l_id, admin_id, student_name, student_id, pro_title, session, pro_pdf) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        connect();

        try {
            jdbcConnection.setAutoCommit(false);

            try (PreparedStatement statementRP = jdbcConnection.prepareStatement(sqlPastReport)) {
                statementRP.setInt(1, ps.getProId());
                statementRP.setInt(2, ps.getLId());
                statementRP.setInt(3, ps.getAdminId());
                statementRP.setString(4, ps.getStudentName());
                statementRP.setInt(5, ps.getStudentId());
                statementRP.setString(6, ps.getProTitle());
                statementRP.setString(7, ps.getSession());
                statementRP.setString(8, ps.getProPdf());
                statementRP.executeUpdate();
            }

            jdbcConnection.commit();
        } catch (SQLException ex) {
            jdbcConnection.rollback();
            throw new SQLException(ex);
        } finally {
            jdbcConnection.setAutoCommit(true);
            disconnect();
        }
    }

    public PastProject getPastReportById(int proId) throws SQLException {
        PastProject pastReport = null;
        String sql = "SELECT * FROM past_project WHERE pro_ID = ?";

        connect();

        try (PreparedStatement statement = jdbcConnection.prepareStatement(sql)) {
            statement.setInt(1, proId);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                int lId = resultSet.getInt("l_id");
                int adminId = resultSet.getInt("admin_id");
                String studentName = resultSet.getString("student_name");
                int studentId = resultSet.getInt("student_id");
                String proTitle = resultSet.getString("pro_title");
                String session = resultSet.getString("session");
                String proPdf = resultSet.getString("pro_pdf");

                pastReport = new PastProject(proId, lId, adminId, studentName, studentId, proTitle, session, proPdf);
            }
        } finally {
            disconnect();
        }

        return pastReport;
    }

    public String getPdfPathById(int proId) throws SQLException {
        String pdfPath = null;
        String sql = "SELECT pro_pdf FROM past_project WHERE pro_ID = ?";

        connect();

        try (PreparedStatement statement = jdbcConnection.prepareStatement(sql)) {
            statement.setInt(1, proId);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                pdfPath = resultSet.getString("pro_pdf");
            }
        } finally {
            disconnect();
        }

        return pdfPath;
    }

    public List<PastProject> getAllPastReports() throws SQLException {
        List<PastProject> reports = new ArrayList<>();
        String query = "SELECT * FROM past_project";
        connect();

        try (PreparedStatement stmt = jdbcConnection.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                PastProject report = new PastProject(
                        rs.getInt("pro_ID"),
                        rs.getInt("l_id"),
                        rs.getInt("admin_id"),
                        rs.getString("student_name"),
                        rs.getInt("student_id"),
                        rs.getString("pro_title"),
                        rs.getString("session"),
                        rs.getString("pro_pdf")
                );
                reports.add(report);
            }
        } finally {
            disconnect();
        }
        return reports;
    }
}
