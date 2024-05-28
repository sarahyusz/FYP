<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" style="height: 100%;">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@1.0.0/css/bulma.min.css">
    <script src="https://kit.fontawesome.com/d21aa4c3aa.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./css/style.css">
    <style>
        .button.is-nav {
            background-color: #14161a;
            border-color: #fff;
            color: #fff;
        }
        .button.is-nav:hover,.button.nav.is-hovered {
            background-color: #a0e4d1;
            border-color: #14161a;
            color: #090a0c
        }
        .button.is-nav.is-outlined:hover,.button.is-nav.is-outlined.is-hovered,.button.is-custom.is-outlined:focus,.button.is-nav.is-outlined.is-focused {
            background-color: #fff;
            border-color: #fff;
            color: #090a0c
        }
    </style>
</head>
<body style="height:100%;">
    <div class="is-flex is-justify-content-space-between is-mobile-visible">
        <div class=" is-mobile-visible p-2">
            <img src="../assets/uitm-logo.png" style="height:30px; width:60px;">
        </div>
        <button role="button" class="navbar-burger is-mobile-visible" data-target="navMenu" aria-label="menu" aria-expanded="false">
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
        </button>
    </div>
    <div class="p-2 navbar-menu is-mobile-visible" id="navMenu" style="">
        <nav class="navbar" role="navigation" aria-label="dropdown navigation">
            <div class="navbar-item has-dropdown">
                <div class="navbar-dropdown">
                    <a class="box has-text-black navbar-item p-4 m-0" style="background-color: #a0e4d1;">
                        <span class="fas fa-home pr-2"></span>
                        <span class="is-size-7">Dashboard</span>
                    </a>
                    <a class="navbar-item p-4" href="../Lecturers/UserProfile-Lecturer.jsp">
                        <span class="fas fa-user pr-4"></span>
                        <span class="is-size-7">Profile</span>
                    </a>
                    <a class="navbar-item p-4" href="../Lecturers/Report-Lecturer.jsp">
                        <span class="fas fa-inbox pr-4 is-size-7"></span>
                        <span class="is-size-7">Reports</span>
                    </a>
                    <a class="navbar-item p-4" href="../Lecturers/Form-Lecturer.jsp">
                        <span class="fas fa-book pr-4 is-size-7"></span>
                        <span class="is-size-7">Form</span>
                    </a>
                    <a class="navbar-item p-4" href="../Lecturers/Scope-Lecturer.jsp">
                        <span class="fas fa-book pr-4 is-size-7"></span>
                        <span class="is-size-7">Scope</span>
                    </a>
                    <a class="navbar-item p-4" href="../Lecturers/StudentList-Supervision.jsp">
                        <span class="fas fa-circle-plus pr-4 is-size-7"></span>
                        <span class="is-size-7">Supervision</span>
                    </a>
                    <a class="navbar-item p-4">
                        <span class="fas fa-arrow-right-from-bracket pr-4"></span>
                        <span class=" is-size-7" >Sign-out</span>
                    </a>
                </div>
            </div>
        </nav>
    </div>
<div class="columns m-0 p-0 h-100">
    <div class="p-2 column is-2 is-desktop-visible">
        <aside class="menu">
          <p class="menu-label p-1 m-0">
              <img src="../assets/uitm-logo.png" style="height:50px; width:142px;">
          </p>
          <ul class="menu-list">
              <li class="py-1">
                  <a class="button is-nav navbar-item p-4" href="../Lecturers/Dashboard-Lecturer.jsp">
                    <span class="fas fa-home pr-2 is-size-7"></span>
                    <span class="is-size-7">Dashboard</span>
                  </a>
              </li>
              <li class="py-1">
                  <a class="button is-nav navbar-item p-4" href="../Lecturers/UserProfile-Lecturer.jsp">
                    <span class="fas fa-user pr-4 is-size-7"></span>
                    <span class="is-size-7">Profile</span>
                  </a>
              </li>
              <li class="py-1">
                  <a class="button is-nav navbar-item p-4" href="../Lecturers/Report-Lecturer.jsp">
                    <span class="fas fa-inbox pr-4 is-size-7"></span>
                    <span class="is-size-7">Reports</span>
                  </a>
              </li>
              <li class="py-1">
                  <a class="button is-nav navbar-item p-4" href="../Lecturers/Form-Lecturer.jsp">
                      <span class="fas fa-file-pen pr-4 is-size-7"></span>
                        <span class="is-size-7">Form</span>
                  </a>
              </li>
              <li class="py-1">
                  <a class="button is-nav navbar-item p-4" href="../Lecturers/Scope-Lecturer.jsp">
                      <span class="fas fa-book pr-4 is-size-7"></span>
                      <span class="is-size-7">Scope</span>
                  </a>
              </li>
              <li class="py-1">
                  <a class="box has-text-black navbar-item p-4" style="background-color: #a0e4d1;">
                      <span class="fas fa-circle-plus pr-4 is-size-7"></span>
                      <span class="is-size-7">Supervision</span>
                  </a>
              </li>
              <li class="py-1">
                  <a class="button is-nav navbar-item p-4">
                      <span class="fas fa-arrow-right-from-bracket pr-4 is-size-7"></span>
                      <span class="is-size-7">Sign-out</span>
                  </a>
              </li>
          </ul>
        </aside>
    </div>
    <div class="column h-100 p-6" style="background-color:#FFFFFF; overflow-y: scroll;">
        <div class="custom-border p-6 w-100">
            <div class="is-flex is-justify-content-space-between is-align-items-center pb-2">
                <div>
                    <label class="has-text-weight-semibold has-text-grey is-size-5">Student List With Supervisor</label>
                    <p class="has-text-success is-size-7">Students with accepted Supervisor</p>
                </div>
                <div class="" style="align-content:center;">
                    <div class="dropdown is-hoverable" style="width: 120px;">
                        <div class="dropdown-trigger" style="width: 120px;">
                            <button class="button is-white" style="width: 120px;border: 0.9px solid;" aria-haspopup="true" aria-controls="dropdown-menu3">
                                <span class=" is-size-7">Sort</span>
                                <span class="icon is-small">
                                    <i class="fas fa-angle-down" aria-hidden="true"></i>
                                </span>
                            </button>
                        </div>
                        <div class="dropdown-menu is-size-7 w-100" id="dropdown-menu1" role="menu">
                            <div class="dropdown-content w-100">
                                <a href="#" class="dropdown-item is-size-7">Newest </a>
                                <a href="#" class="dropdown-item is-size-7">All </a>
                                <a href="#" class="dropdown-item is-size-7">Solved </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="p-3">
                <table class="">
                    <thead>
                    <tr class="" style="border-bottom: 2px solid #ddd;">
                        <th class="has-text-grey-light is-size-7 has-text-centered has-text-weight-semibold">Topic</th>
                        <th class="has-text-grey-light is-size-7 has-text-centered has-text-weight-semibold">Supervisor Name</th>
                        <th class="has-text-grey-light is-size-7 has-text-centered has-text-weight-semibold">Matric ID</th>
                        <th class="has-text-grey-light is-size-7 has-text-centered has-text-weight-semibold">Session</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr class="mb-0">
                        <td class="is-size-7 has-text-centered has-text-right-mobile has-text-weight-semibold has-text-grey" data-label="Topic">
                            Android App Development
                        </td>
                        <td class="is-size-7 has-text-centered has-text-right-mobile has-text-weight-semibold has-text-grey" data-label="Supervisor Name">
                            Puan Nurul Huda binti Harun
                        </td>
                        <td class="is-size-7 has-text-centered has-text-right-mobile has-text-weight-semibold has-text-grey" data-label="Matric ID">
                            2023546821
                        </td>
                        <td class="is-size-7 has-text-centered has-text-right-mobile has-text-weight-semibold has-text-grey" data-label="Session">
                            Session Date
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="p-3 is-flex is-justify-content-space-between">
                <label class="has-text-grey-light is-size-7">Showing data 1 to 8 of 256k entries</label>
                <div>
                    <nav class="pagination is-right" role="navigation" aria-label="pagination">
                      <ul class="pagination-list">
                        <li><a href="#" class="pagination-link has-background-grey-lighter" style="border: 0;" aria-label="Goto page before"><</a></li>
                        <li><a class="pagination-link is-current" aria-label="Goto page 1">1</a></li>
                        <li><a href="#" class="pagination-link has-background-grey-lighter" style="border: 0;" aria-label="Page 2" aria-current="page">2</a></li>
                        <li><a href="#" class="pagination-link has-background-grey-lighter" style="border: 0;" aria-label="Goto page 3">3</a></li>
                        <li><span class="pagination-ellipsis">&hellip;</span></li>
                        <li><a href="#" class="pagination-link has-background-grey-lighter" style="border: 0;" aria-label="Goto page next">86</a></li>
                      </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', () => {

  // Get all "navbar-burger" elements
  const $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);

  // Add a click event on each of them
  $navbarBurgers.forEach( el => {
    el.addEventListener('click', () => {

      // Get the target from the "data-target" attribute
      const target = el.dataset.target;
      const $target = document.getElementById(target);

      // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
      el.classList.toggle('is-active');
      $target.classList.toggle('is-active');

    });
  });

});
</script>
</body>
</html>