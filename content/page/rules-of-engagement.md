---
title       : "Recruitment Agencies - Rules of Engagement"
banner      : "/img/pbx-gs/pbx-gs-logo.png"
image       : "/img/blog/Photoboxgroup_wearehiringRGB.png"
url         : "/recruiters"
description : "Photobox Group Security is the team responsible for securing magic moments for customers of our brands."
---

Photobox Group are not looking to work with recruitment agencies for any permanent roles listed on this site. 

If you have any suitable candidates for the contract positions listed, please [email us](mailto:project-cx@photobox.com).

                        <div>
                            <table class="table">
                                <thead>
                                <tr>
                                    <th> Role           </th>
                                    <th> Contract Type  </th>
                                    <th> Location       </th>
                                    <th> Apply          </th>
                                </tr>
                                </thead>
                                <tbody>
                                {{ range where .Data.Pages "Params.contract_type" "Contractor" }}
                                <tr>
                                    {{ partial "roles/contract_td.html" . }}
                                </tr>
                                {{ end }}
                                </tbody>

                            </table>

                        </div>
