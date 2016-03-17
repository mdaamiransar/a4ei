package jasper;

import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
 
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.export.JRPdfExporter;
import net.sf.jasperreports.export.ExporterInput;
import net.sf.jasperreports.export.OutputStreamExporterOutput;
import net.sf.jasperreports.export.SimpleExporterInput;
import net.sf.jasperreports.export.SimpleOutputStreamExporterOutput;
import net.sf.jasperreports.export.SimplePdfExporterConfiguration;
 
public class JavaCallJasperReport {
	
	static String Driver="com.mysql.jdbc.Driver";
	static String url="jdbc:mysql://localhost/Shopping";
	static String username="root";
	static String password="root";
	
    public static void main(String[] args) throws JRException,
            ClassNotFoundException, SQLException {
 
        String reportSrcFile = "D:/FINAL/E-final/Invoice.jrxml";
         
        // First, compile jrxml file.
        JasperReport jr = JasperCompileManager.compileReport(reportSrcFile);
 
        Class.forName(Driver);
        Connection con = DriverManager.getConnection(url, username, password);
        
        // Parameters for report
        Map<String, Object> parameters = new HashMap<String, Object>();
 
   JasperPrint print = JasperFillManager.fillReport(jr,parameters, con);
 
        // Make sure the output directory exists.
        File outDir = new File("D:/jasper");
        outDir.mkdirs();
 
        // PDF Exportor.
        JRPdfExporter exporter = new JRPdfExporter();
 
        ExporterInput exporterInput = new SimpleExporterInput(print);
        // ExporterInput
        exporter.setExporterInput(exporterInput);
 
        // ExporterOutput
        OutputStreamExporterOutput exporterOutput = new SimpleOutputStreamExporterOutput(
                "D:/jasper/AA.pdf");
        // Output
        exporter.setExporterOutput(exporterOutput);
 
        //
        SimplePdfExporterConfiguration configuration = new SimplePdfExporterConfiguration();
        exporter.setConfiguration(configuration);
        exporter.exportReport();
 
        System.out.print("Done!");
    }
}