package com.promise.test.servlet;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;



public class TestServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	public void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		resp.setContentType("image/jpeg;charset=UTF-8");
		int width = 100, height = 40;
		BufferedImage image = new BufferedImage(width, height,
				BufferedImage.TYPE_INT_RGB);
		Graphics g = image.getGraphics();
		g.setColor(Color.yellow);
		g.fillRect(0, 0, width, height);
		g.setColor(Color.blue);
		g.drawRect(0, 0, width-1, height-1);
		g.setFont(new Font("黑体", Font.BOLD, 22));
		g.setColor(Color.red);
		g.drawString(req.getParameter("yzm"), 30, 30);
		Random random = new Random();
		int x1;
		int x2;
		int y1;
		int y2;
		g.setColor(Color.LIGHT_GRAY);
		for (int i = 0; i < 10; i++) {
			x1 = random.nextInt(width);
			x2 = random.nextInt(width);
			y1 = random.nextInt(height);
			y2 = random.nextInt(height);
			g.drawLine(x1, y1, x2, y2);
		}
		g.dispose();
		OutputStream toClient = resp.getOutputStream();
		JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(toClient);
		encoder.encode(image);
		toClient.close();

	}

}
