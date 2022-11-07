package com.spring.persistence;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.AccessDeniedException;
import java.util.*;

public class test {

    public static void main(String[] args) {
        List<List<String>> ret = new ArrayList<List<String>>();
        BufferedReader br = null;
        try {
            br = Files.newBufferedReader(Paths.get("C:\\all.csv"));
            String line = "";
            while((line = br.readLine()) != null) {
                //csv 1행을 저장하는 리스트
                List<String> tmpList = new ArrayList<String>();
                String array[] = line.split(",");
                //배열에서 리스트 반환
                tmpList = Arrays.asList(array);
                System.out.println(tmpList);
                ret.add(tmpList);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }catch (IOException e) {
            e.printStackTrace();
        }finally {
            try {
                if(br != null) {
                    br.close();
                }
            }catch(IOException e) {
                e.printStackTrace();
            }
        }

    }

}