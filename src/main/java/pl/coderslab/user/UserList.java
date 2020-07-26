package pl.coderslab.user;

import pl.coderslab.web.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/userlist")

    public class UserList extends HttpServlet {
        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            UserDao userDao = new UserDao();

            req.setAttribute("users", userDao.findAll());


            getServletContext().getRequestDispatcher("/user/list.jsp").forward(req, resp);

        }
    }


