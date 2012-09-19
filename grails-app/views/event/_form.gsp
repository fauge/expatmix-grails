<%@ page import="org.expatmix.Event" %>



<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'description', 'error')} ">
    <label for="description">
        <g:message code="event.description.label" default="Description"/>

    </label>
    <g:textField name="description" value="${eventInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'eventDate', 'error')} required">
    <label for="eventDate">
        <g:message code="event.eventDate.label" default="Event Date"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="eventDate" precision="day" value="${eventInstance?.eventDate}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'language', 'error')} ">
    <label for="language">
        <g:message code="event.language.label" default="Language"/>

    </label>
    <g:textField name="language" value="${eventInstance?.language}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'maxParticipants', 'error')} required">
    <label for="maxParticipants">
        <g:message code="event.maxParticipants.label" default="Max Participants"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="maxParticipants" type="number" value="${eventInstance.maxParticipants}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'place', 'error')} ">
    <label for="place">
        <g:message code="event.place.label" default="Place"/>

    </label>
    <g:textField name="place" value="${eventInstance?.place}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'title', 'error')} ">
    <label for="title">
        <g:message code="event.title.label" default="Title"/>

    </label>
    <g:textField name="title" value="${eventInstance?.title}"/>
</div>

