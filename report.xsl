<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <style type="text/css">
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    body {
                        margin: 20px 10px 20px 10px;
                    }
                    
                    table, th, td {
                        border: 1px solid black;
                        padding: 8px;
                    }
                    th, td {
                        text-align: left;
                    }
                    th {
                        background-color: #f2f2f2;
                    }
                    td {
                        vertical-align: top;
                    }
                    td.severity {
                        max-width: 100px;
                    }
                    td.type {
                        width: 100px;
                    }
                    /* td.rule { max-width: 100px; }*/
                    td.effort {
                        width: 50px;
                    }
                    td.message {
                        max-width: 400px;
                    }
                    td.impact {
                        max-width: 200px;
                    }
                    td.text-range {
                        max-width: 150px;
                    }
                    td.component {
                        max-width: 250px;
                    }
                    ul {
                        list-style-type: none;
                        padding: 0px;
                        margin: 0px;
                    }
                    ul li {
                        display: block;
                        
                    }
                </style>
            </head>
            <body>
                <h2>SonarQube scan report 2024-11-22</h2>
                <h3><xsl:value-of select="report/impacts"/></h3>
                <table>
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Severity</th>
                            <th>Type</th>
                            <th>Rule</th>
                            <th>Effort</th>
                            <th>Impacts</th>
                            <th>Message</th>
                            <th colspan="2">Location: component, text range</th>
                            
                        </tr>
                    </thead>
                    
                    <tbody>
                        <xsl:for-each select="report/issues">
                            <xsl:sort select="severity" order="ascending" />
                            <tr>
                                <td> 
                                    <xsl:number value="position()" format="1" />.</td>
                                <td class="severity">
                                    <xsl:value-of select="severity"/>
                                </td>
                                <td class="type">
                                    <xsl:value-of select="type"/>
                                </td>
                                <td class="rule">
                                    <xsl:value-of select="rule"/>
                                </td>
                                <td class="effort">
                                    <xsl:value-of select="effort"/>
                                </td>
                                <td class="impact">
                                    <ul>    
                                        <li>
                                            <xsl:text>Severity: </xsl:text>
                                            <xsl:value-of select="impacts/severity"/>
                                        </li>
                                        <li>
                                            <xsl:text>Software quality: </xsl:text>
                                            <xsl:value-of select="impacts/softwareQuality"/>
                                        </li>
                                    </ul>
                                    
                                </td>
                                <td class="message">
                                    <xsl:value-of select="message"/>
                                </td>
                                <td class="component">
                                    <xsl:value-of select="component"/>
                                </td>
                                <td class="text-range">
                                    <ul>
                                        <li>
                                            <xsl:text>Start, end line: </xsl:text>
                                            <xsl:value-of select="textRange/startLine"/>
                                            <xsl:text>, </xsl:text>
                                            <xsl:value-of select="textRange/endLine"/>
                                        </li>
                                        <li>
                                            <xsl:text>Start, end offset: </xsl:text>
                                            <xsl:value-of select="textRange/startOffset"/>
                                            <xsl:text>, </xsl:text>
                                            <xsl:value-of select="textRange/endOffset"/>   
                                        </li>
                                    </ul>          
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>