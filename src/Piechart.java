/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//package Coders;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Locale;
import javax.swing.JFrame;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PiePlot3D;
//import org.jfree.data.general.DefaultKeyedValuesDataset;
import org.jfree.data.general.DefaultPieDataset;
import org.jfree.data.general.PieDataset;
import org.jfree.util.Rotation;

/**
 *
 * @author Namit
 */
public class Piechart extends JFrame {

    public Piechart(String appTitle, String chartTitle) {
        PieDataset dataset = createDataset();
        JFreeChart chart = createChart(dataset, chartTitle);
        ChartPanel chartpanel = new ChartPanel(chart);
        chartpanel.setPreferredSize(new java.awt.Dimension(500, 300));
        setContentPane(chartpanel);

    }

    private PieDataset createDataset() {
        DefaultPieDataset result = new DefaultPieDataset();
        Connection con = null;
        int countA = 0,countW = 0;
        String user = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(JDBC_Connection.connectionAddress, JDBC_Connection.userName, JDBC_Connection.password);
            //id1101599_db2         
            Statement stat = con.createStatement();
            String q = "SELECT username FROM Login_Logout";
            System.out.println(q);
            ResultSet rs1 = stat.executeQuery(q);
            while(rs1.next())
            {
                user = rs1.getString("username");
            }
            String insertString = "SELECT COUNT(*) FROM `submissions` WHERE username = '" + Login.userrName +"' AND Status = \"Accepted\"";
            System.out.println(insertString);
            ResultSet rs= stat.executeQuery(insertString);
            //System.out.println("Return value from executeUpdate" + i);
            while(rs.next())
            {
                countA = rs.getInt("COUNT(*)");
            }
            String inString = "SELECT COUNT(*) FROM `submissions` WHERE username = '" + Login.userrName +"' AND Status != \"Accepted\"";
            System.out.println(inString);
            ResultSet rs2= stat.executeQuery(inString);
            //System.out.println("Return value from executeUpdate" + i);
            while(rs2.next())
            {
                countW = rs2.getInt("COUNT(*)");
            }

            //con.commit();
            stat.close();
            con.close();
        } catch (Exception e) {
            System.out.println("Exception caught --> " + e);
        }
        result.setValue("Accepted",countA);
        result.setValue("Wrong Answer", countW);
        //result.setValue("", new Double(0.05));
        return result;
    }

    private JFreeChart createChart(PieDataset dataset, String title) {
        JFreeChart chart = ChartFactory.createPieChart3D(title, dataset, true, true, false);
        PiePlot3D plot = (PiePlot3D) chart.getPlot();
        plot.setStartAngle(90);
        plot.setDirection(Rotation.CLOCKWISE);
        plot.setForegroundAlpha(0.9f);
        return chart;
    }

}
