package com.fyp.model.bean;

/**
 *
 * @author User
 */
public class Proposal {
    private int proposalId;
    private int studentId;
    private int lId;
    private int scopeId;
    private String topic;
    private String semester;
    private String pdfUrl;
    private String pdfName;
    private String status;
    
    /**
     *
     * @param proposalId
     * @param studentId
     * @param lId
     * @param scopeId
     * @param topic
     * @param semester
     * @param pdfUrl
     * @param pdfName
     * @param status
     */
  

    public Proposal(int proposalId, int studentId, int lecturerId, int scopeId, String topic, String session, String pdfUrl, String pdfName, String status) {
        this.proposalId=proposalId;
        this.studentId=studentId;
        this.lId=lecturerId;
        this.scopeId=scopeId;
        this.topic=topic;
        this.semester=session;
        this.pdfUrl=pdfUrl;
        this.pdfName=pdfName;
        this.status=status;
    }

    public int getProposalId() {
        return proposalId;
    }

    public int getStudentId() {
        return studentId;
    }

    public int getlId() {
        return lId;
    }

    public int getScopeId() {
        return scopeId;
    }

    public String getTopic() {
        return topic;
    }

    public String getSemester() {
        return semester;
    }

    public String getPdfUrl() {
        return pdfUrl;
    }

    public String getPdfName() {
        return pdfName;
    }

    public void setProposalId(int proposalId) {
        this.proposalId = proposalId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    public void setlId(int lId) {
        this.lId = lId;
    }

    public void setScopeId(int scopeId) {
        this.scopeId = scopeId;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public void setSemester(String semester) {
        this.semester = semester;
    }

    public void setPdfUrl(String pdfUrl) {
        this.pdfUrl = pdfUrl;
    }

    public void setPdfName(String pdfName) {
        this.pdfName = pdfName;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    
}