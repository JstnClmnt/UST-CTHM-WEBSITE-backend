/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package helper;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author User
 */
public class JsonArray {
    List list;
    
    public JsonArray() {
        list = new ArrayList();
    }
    
    public int size() {
        return list.size();
    }
    
    /**
     * Adds a data to the JSON array. This data can be any object. It can even be another JsonArray or JsonObject.
     * @param value
     * @return 
     */
    public Object addData(Object value) {
        list.add(value);
        return value;
    }
    
    private Object add(Object value) {
        list.add(value);
        return value;
    }
    
    public String addData(String value) {
        list.add(value);
        return value;
    }
    
    public int addData(int value) {
        list.add(value);
        return value;
    }
    
    public JsonObject addData(JsonObject value) {
        list.add(value);
        return value;
    }
    
    public JsonArray addData(JsonArray value) {
        list.add(value);
        return value;
    }
    
    /**
     * This can throw an ArrayIndexOutOfBounds if you're not careful with the index.
     * @param index
     * @return 
     */
    public Object removeData(int index) {
        Object obj = list.get(index);
        list.remove(index);
        return obj;
    }
    
    /**
     * This can throw an ArrayIndexOutOfBounds if you're not careful with the index.
     * @param index
     * @return 
     */
    public Object getData(int index) {
        return list.get(index);
    }
    
    /**
     * Create the actual JSON text of the data entered in this instance.
     * @return 
     */
    @Override
    public String toString() {
        StringBuilder str = new StringBuilder();
        str.append("[");

        int counter = 0;
        for (Object obj : list) {
            str.append(JsonObject.format(obj));
            
            if (counter < list.size() - 1) {
                str.append(",");
            }
            
            counter++;
        }
        
        str.append("]");
        return str.toString();
    }
    
}
