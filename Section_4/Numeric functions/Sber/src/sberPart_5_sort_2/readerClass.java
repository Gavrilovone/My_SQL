package sberPart_5_sort_2;

/* Сортировка списка городов по федеральному округу и наименованию города внутри каждого
федерального округа в алфавитном порядке по убыванию с учетом регистра */

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class readerClass {

    public static void main(String[] args) throws IOException {
        try ( Scanner scanner = new Scanner(new File("Задача ВС Java Сбер.csv"))) {
            List<City> cityList = new ArrayList<>();
            while (scanner.hasNextLine()) {
                String[] splitLine = scanner.nextLine().split(";");
                cityList.add(new City(splitLine[1], splitLine[2], splitLine[3], splitLine[4], splitLine[5]));
                cityList.sort((o1, o2) -> o1.getName().compareTo(o2.getName()));
                cityList.sort((o1, o2) -> o1.getDistrict().compareTo(o2.getDistrict()));
            }
            for (City st : cityList) {
                System.out.println(st);
            }

        } catch (ArrayIndexOutOfBoundsException e) {
            System.out.println("problems with the file" + e);
        }

    }

}
