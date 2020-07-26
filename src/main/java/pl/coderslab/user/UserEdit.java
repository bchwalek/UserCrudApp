package pl.coderslab.user;

import pl.coderslab.web.User;
import pl.coderslab.web.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet("/useredit")
    public class UserEdit extends HttpServlet {


        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            String id = req.getParameter("id");

            UserDao userDao = new UserDao();

            User read = userDao.read(Integer.parseInt(id));
            req.setAttribute("user", read);

            getServletContext().getRequestDispatcher("/user/edit.jsp").forward(req, resp);
        }

        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            String id = req.getParameter("id");
            UserDao userDao = new UserDao();
            User updateUser= userDao.read(Integer.parseInt(id));

            if(updateUser != null){
            updateUser.setUserName(req.getParameter("userName"));
            updateUser.setEmail(req.getParameter("email"));
            userDao.update(updateUser);
            }

            resp.sendRedirect("/userlist");
        }
    }

