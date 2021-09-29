<aura:application >
    <aura:attribute name="name" type="String" />
    <aura:attribute name="races" type="String[]" default="['Race 1', 'Race 2', 'Race 3']"/>
    <aura:handler name="init" value="{!this}" action="{!c.doInit}"/>
    
	<div>
    	<h1>Enter New Race Info</h1>
        <ui:inputText label="Name" aura:id="name" value="{!v.name}" />
        <ui:inputSelect label="Race Type" aura:id="Type"/>
        <ui:inputDate label="Race Date" aura:id="DateTime"/>
        <ui:inputTextArea label="Location" aura:id="Location"/>
        <ui:inputCheckbox label="Attended" aura:id="Attended"/>
        <ui:inputText label="Results" aura:id="Results"/>
        <ui:button label="Submit" press="{!c.newRace}"/>
    </div>
    <div>
    	<aura:iteration items="{!v.races}" var="race">
            <ui:outputText value="{!race}"/><br/>
        </aura:iteration>
    </div>
</aura:application>