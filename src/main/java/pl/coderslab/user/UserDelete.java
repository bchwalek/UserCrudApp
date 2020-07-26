package pl.coderslab.user;

import pl.coderslab.web.User;
import pl.coderslab.web.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/userdelete")
public class UserDelete extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String id = req.getParameter("id");

        UserDao userDao = new UserDao();

        userDao.delete(Integer.parseInt(id));



        getServletContext().getRequestDispatcher("/userlist").forward(req, resp);

    }
}
