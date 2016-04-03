package com.softserveinc.hospital.model;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import org.joda.time.DateTime;
import org.joda.time.LocalDate;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

import java.io.IOException;

/**
 * Created by ksu on 03.04.16.
 */
public class LocalDateJSONSerializer extends JsonSerializer<LocalDate> {

        private static DateTimeFormatter formatter =
                DateTimeFormat.forPattern("dd-MM-yyyy");

        @Override
        public void serialize(LocalDate value, JsonGenerator gen,
                              SerializerProvider arg2){

            try {
                gen.writeString(formatter.print(value));
            } catch (JsonProcessingException e){
                e.printStackTrace();
            }
            catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

