package rage.emo.dto;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.util.Date;
import javax.persistence.MappedSuperclass;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.data.jpa.domain.AbstractPersistable;

@MappedSuperclass
public abstract class AbstractSiteVisit extends AbstractPersistable<Long> {

    private String username;
    private String siteUrl;

    @Temporal(TemporalType.TIMESTAMP)
    private Date visitStarted;
    @Temporal(TemporalType.TIMESTAMP)
    private Date visitEnded;

    private String assignedMaterialType;

    public String getAssignedMaterialType() {
        return assignedMaterialType;
    }

    public void setAssignedMaterialType(String assignedMaterialType) {
        this.assignedMaterialType = assignedMaterialType;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Date getVisitStarted() {
        return visitStarted;
    }

    public void setVisitStarted(Date visitStarted) {
        this.visitStarted = visitStarted;
    }

    public Date getVisitEnded() {
        return visitEnded;
    }

    public void setVisitEnded(Date visitEnded) {
        this.visitEnded = visitEnded;
    }

    public String getSiteUrl() {
        return siteUrl;
    }

    public void setSiteUrl(String siteUrl) {
        this.siteUrl = siteUrl;
    }

    @Override
    @JsonIgnore
    public boolean isNew() {
        return super.isNew(); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String toString() {
        return getUsername() + ";" + getAssignedMaterialType() + ";" + (getVisitEnded().getTime() - getVisitStarted().getTime()) + ";" + getVisitStarted() + ";" + getVisitEnded() + ";" + getSiteUrl();
    }
}
