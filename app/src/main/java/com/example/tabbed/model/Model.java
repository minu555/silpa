package com.example.tabbed.model;

import com.android.volley.Response;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;


public class Model {

    @SerializedName("config")
    @Expose
    private Config config;
    @SerializedName("response")
    @Expose
    private Response response;

    public Config getConfig() {
        return config;
    }

    public void setConfig(Config config) {
        this.config = config;
    }

    public Model withConfig(Config config) {
        this.config = config;
        return this;
    }

    public Response getResponse() {
        return response;
    }

    public void setResponse(Response response) {
        this.response = response;
    }

    public Model withResponse(Response response) {
        this.response = response;
        return this;
    }

}