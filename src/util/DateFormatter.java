package util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateFormatter {

	public static String concatenarDataHora(String data, String hora){
		
		String datahora = data + " " + hora;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		Calendar c = Calendar.getInstance();
		try {
			c.setTime(sdf.parse(datahora));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return sdf.format(c.getTime());
	}
	
	public static String formatarDataHora(String desformatada) throws Exception {

		String data = desformatada;

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Calendar d = Calendar.getInstance();
		d.setTime(sdf.parse(data));
		return sdf.format(d.getTime());
	}
	
	public static String formatarData(String desformatada) throws Exception {

		String data = desformatada;

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Calendar d = Calendar.getInstance();
		d.setTime(sdf.parse(data));
		return sdf.format(d.getTime());
	}
	
	public static String formatarDataUser(String desformatada) throws Exception {

		String data = desformatada;

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Calendar d = Calendar.getInstance();
		d.setTime(sdf.parse(data));
		sdf = new SimpleDateFormat("dd-MM-yyyy");
		return sdf.format(d.getTime());
	}
	
	public static String formatarHora(String desformatada) throws Exception {

		String data = desformatada;

		SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
		Calendar d = Calendar.getInstance();
		d.setTime(sdf.parse(data));
		return sdf.format(d.getTime());
	}

}