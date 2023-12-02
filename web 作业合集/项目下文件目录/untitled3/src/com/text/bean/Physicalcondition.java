package com.text.bean;

public class Physicalcondition {
	private String id;
	private String name;
	private String description;
	private String status;
	private String createdate;
	private String createdby;
	private String updatedate;
	private String updatedby;
	private String isdeleted;

    public Physicalcondition() {
    }

    public Physicalcondition(String id, String name, String description, String status, String createdate, String createdby, String updatedate, String updatedby, String isdeleted) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.status = status;
        this.createdate = createdate;
        this.createdby = createdby;
        this.updatedate = updatedate;
        this.updatedby = updatedby;
        this.isdeleted = isdeleted;
    }

    @Override
    public String toString() {
        return "Physicalcondition{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", status='" + status + '\'' +
                ", createdate='" + createdate + '\'' +
                ", createdby='" + createdby + '\'' +
                ", updatedate='" + updatedate + '\'' +
                ", updatedby='" + updatedby + '\'' +
                ", isdeleted='" + isdeleted + '\'' +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCreatedate() {
        return createdate;
    }

    public void setCreatedate(String createdate) {
        this.createdate = createdate;
    }

    public String getCreatedby() {
        return createdby;
    }

    public void setCreatedby(String createdby) {
        this.createdby = createdby;
    }

    public String getUpdatedate() {
        return updatedate;
    }

    public void setUpdatedate(String updatedate) {
        this.updatedate = updatedate;
    }

    public String getUpdatedby() {
        return updatedby;
    }

    public void setUpdatedby(String updatedby) {
        this.updatedby = updatedby;
    }

    public String getIsdeleted() {
        return isdeleted;
    }

    public void setIsdeleted(String isdeleted) {
        this.isdeleted = isdeleted;
    }
}
