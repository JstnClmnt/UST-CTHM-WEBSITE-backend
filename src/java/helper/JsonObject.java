/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package helper;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author User
 */
public class JsonObject {

    private Map<String, Object> map;

    public JsonObject() {
        map = new HashMap<>();
    }

    /**
     * Creates an element in the JSON object. This is equivalent to name : value
     * in actual JSON.
     *
     * @param name
     * @param value
     * @return
     */
    public Object addData(String name, Object value) {
        return map.put(name, value);
    }

    public String addData(String name, String value) {
        map.put(name, value);
        return value;
    }

    public int addData(String name, int value) {
        map.put(name, value);
        return value;
    }

    public JsonObject addData(String name, JsonObject value) {
        map.put(name, value);
        return value;
    }

    public JsonArray addData(String name, JsonArray value) {
        map.put(name, value);
        return value;
    }

    public Object removeData(String name) {
        return map.remove(name);
    }

    public Object getData(String name) {
        return map.get(name);
    }

    public int size() {
        return map.size();
    }

    /**
     * Helper classes of the JSON helpers.
     *
     * @param obj
     * @return
     */
    protected static String format(Object obj) {
        if (obj == null) { //JSON accepts nulls. If the obj is null, it will be represented as text in the JSON.
            return "null";
        } else if (obj instanceof String) { //ALL string values are enclosed with double quotations in JSON.
            return "\"" + obj.toString() + "\"";
        } else { //non-string values (doubles, integers, other objects/arrays) does not need to be enclosed.
            return obj.toString();
        }
    }

    /**
     * Create the actual JSON text of the data entered in this instance.
     *
     * @return
     */
    @Override
    public String toString() {
        StringBuilder str = new StringBuilder();
        str.append("{");

        int counter = 0;
        for (String key : map.keySet()) {
            counter++;

            str.append(format(key));
            str.append(":");
            str.append(format(map.get(key)));

            if (counter < map.size()) {
                str.append(",");
            }
        }

        str.append("}");
        return str.toString();
    }
}
