package br.edu.utfpr.devjobs.controller;

import br.edu.utfpr.devjobs.util.Constants;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "HomeController", value = "")
public class HomeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        process(request, response);
        request.getRequestDispatcher("/WEB-INF/view/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    private void process(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //Escopo de aplicaçao
        Integer counterApplication = (Integer) getServletContext().getAttribute(Constants.COUNTER_APPLICATION);
        if(counterApplication == null){
            counterApplication = 0;
        }
        counterApplication++;
        getServletContext().setAttribute(Constants.COUNTER_APPLICATION, counterApplication);

        //Escopo de sessao
        Integer counterSession = (Integer) request.getSession(true).getAttribute(Constants.COUNTER_SESSION);
        if(counterSession == null){
            counterSession = 0;
        }
        counterSession++;
        request.getSession(true).setAttribute(Constants.COUNTER_SESSION, counterSession);

        //Cookies
        Cookie cookie = new Cookie("counter", String.valueOf(counterSession));
        cookie.setMaxAge(60 * 60 * 24);// 1 dia

        response.addCookie(cookie);




    }
}
