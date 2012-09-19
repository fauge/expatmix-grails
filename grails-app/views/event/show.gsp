<%@ page import="org.expatmix.Event" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-event" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                            default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-event" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list event">

        <g:if test="${eventInstance?.dateCreated}">
            <li class="fieldcontain">
                <span id="dateCreated-label" class="property-label"><g:message code="event.dateCreated.label"
                                                                               default="Date Created"/></span>

                <span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate
                        date="${eventInstance?.dateCreated}"/></span>

            </li>
        </g:if>

        <g:if test="${eventInstance?.description}">
            <li class="fieldcontain">
                <span id="description-label" class="property-label"><g:message code="event.description.label"
                                                                               default="Description"/></span>

                <span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${eventInstance}"
                                                                                               field="description"/></span>

            </li>
        </g:if>

        <g:if test="${eventInstance?.eventDate}">
            <li class="fieldcontain">
                <span id="eventDate-label" class="property-label"><g:message code="event.eventDate.label"
                                                                             default="Event Date"/></span>

                <span class="property-value" aria-labelledby="eventDate-label"><g:formatDate
                        date="${eventInstance?.eventDate}"/></span>

            </li>
        </g:if>

        <g:if test="${eventInstance?.language}">
            <li class="fieldcontain">
                <span id="language-label" class="property-label"><g:message code="event.language.label"
                                                                            default="Language"/></span>

                <span class="property-value" aria-labelledby="language-label"><g:fieldValue bean="${eventInstance}"
                                                                                            field="language"/></span>

            </li>
        </g:if>

        <g:if test="${eventInstance?.maxParticipants}">
            <li class="fieldcontain">
                <span id="maxParticipants-label" class="property-label"><g:message code="event.maxParticipants.label"
                                                                                   default="Max Participants"/></span>

                <span class="property-value" aria-labelledby="maxParticipants-label"><g:fieldValue
                        bean="${eventInstance}" field="maxParticipants"/></span>

            </li>
        </g:if>

        <g:if test="${eventInstance?.place}">
            <li class="fieldcontain">
                <span id="place-label" class="property-label"><g:message code="event.place.label"
                                                                         default="Place"/></span>

                <span class="property-value" aria-labelledby="place-label"><g:fieldValue bean="${eventInstance}"
                                                                                         field="place"/></span>

            </li>
        </g:if>

        <g:if test="${eventInstance?.title}">
            <li class="fieldcontain">
                <span id="title-label" class="property-label"><g:message code="event.title.label"
                                                                         default="Title"/></span>

                <span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${eventInstance}"
                                                                                         field="title"/></span>

            </li>
        </g:if>

        <g:if test="${participants.size() > 0}">
            <g:each in="${participants}" status="i" var="participant">

                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                    <li class="fieldcontain">
                        <span id="login-label" class="property-label"><g:message code="user.login.label"
                                                                                 default="Login"/></span>

                        <span class="property-value" aria-labelledby="login-label"><g:fieldValue bean="${participant}"
                                                                                                 field="login"/>
                            <g:fieldValue bean="${participant}"
                                          field="name"/>
                        </span>
                    </li>
                </tr>
            </g:each>


            </li>
        </g:if>

    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${eventInstance?.id}"/>
            <g:link class="edit" action="edit" id="${eventInstance?.id}"><g:message code="default.button.edit.label"
                                                                                    default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>

            <g:link action="subscribe" id="${eventInstance?.id}"><g:message code="default.button.subscribe.label"
                                                                                    default="Subscribe"/></g:link>

        </fieldset>
    </g:form>
</div>
</body>
</html>
