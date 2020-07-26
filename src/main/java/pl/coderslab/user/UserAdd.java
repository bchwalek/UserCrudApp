package pl.coderslab.user;

import pl.coderslab.web.User;
import pl.coderslab.web.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

    @WebServlet("/useradd")

    public class UserAdd extends HttpServlet {

        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            getServletContext().getRequestDispatcher("/user/add.jsp").forward(req, resp);
        }

        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            String name = req.getParameter("userName");
            String email = req.getParameter("email");
            String password = req.getParameter("password");

            User user = new User();
            user.setUserName(name);
            user.setEmail(email);
            user.setPassword(password);

            UserDao userDao = new UserDao();

            req.setAttribute("users",userDao.create(user));
            resp.sendRedirect("/userlist");

        }



    }

