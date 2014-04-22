Redmine wiki_issue_details plugin
======================

Adds shortcuts for issue details

Installation
------------

This plugin is compatible with Redmine 2.1.0+.

Please apply general instructions for plugins [here](http://www.redmine.org/wiki/redmine/Plugins).

First download the source or clone the plugin and put it in the "plugins/" directory of your redmine instance. Note that this is crucial that the directory is named redmine_wiki_issue_details !

Then execute:

    $ bundle install
    $ rake redmine:plugins

And finally restart your Redmine instance.


Usage
-----

<h3>Basic issue attributes</h3>


<table>
  <tbody><tr>
    <th>Attribute </th>
    <th>Format </th>
    <th>Example 1 with issue <a href="/issues/10" class="issue tracker-1 status-1 priority-5 priority-default" title="Issue Doing the Blocking (New)">#10</a> </th>
    <th>Example 2 with issue <a href="/issues/13" class="issue tracker-2 status-1 priority-4 priority-lowest" title="Subproject issue two (New)">#13</a> </th>
  </tr>
  <tr>
    <td> Subject </td>
    <td> #ID:subject </td>
    <td> Issue Doing the Blocking </td>
    <td> Subproject issue two </td>
  </tr>
  <tr>
    <td> Description </td>
    <td> #ID:description </td>
    <td> This is an issue that blocks issue </td>
    <td> This is a second issue on a cookbook subproject </td>
  </tr>
  <tr>
    <td> Due Date </td>
    <td> #ID:due_date </td>
    <td> 04/23/2014 </td>
    <td> ? </td>
  </tr>
  <tr>
    <td> Created On </td>
    <td> #ID:created_on </td>
    <td> 2014-04-22 11:28:54 UTC </td>
    <td> 2014-04-17 11:29:54 UTC </td>
  </tr>
  <tr>
    <td> Updated On </td>
    <td> #ID:updated_on </td>
    <td> 2014-04-22 11:28:54 UTC </td>
    <td> 2014-04-22 11:37:12 UTC </td>
  </tr>
  <tr>
    <td> Start Date </td>
    <td> #ID:start_date </td>
    <td> 04/22/2014 </td>
    <td> ? </td>
  </tr>
  <tr>
    <td> Done Ratio </td>
    <td> #ID:done_ratio </td>
    <td> 0 </td>
    <td> 60 </td>
  </tr>
  <tr>
    <td> Estimated Hours </td>
    <td> #ID:estimated_hours </td>
    <td> ? </td>
    <td> ? </td>
  </tr>
  <tr>
    <td> Is Private </td>
    <td> #ID:is_private </td>
    <td> no </td>
    <td> no </td>
  </tr>
  <tr>
    <td> Closed On </td>
    <td> #ID:closed_on </td>
    <td> ? </td>
    <td> ? </td>
  </tr>
  <tr>
    <td> Comments Count </td>
    <td> #ID:comments_count </td>
    <td> 0 </td>
    <td> 0 </td>
  </tr>
  <tr>
    <td> Status </td>
    <td> #ID:status </td>
    <td> New </td>
    <td> New </td>
  </tr>
  <tr>
    <td> Project </td>
    <td> #ID:project </td>
    <td> Private child of eCookbook </td>
    <td> eCookbook Subproject 1 </td>
  </tr>
  <tr>
    <td> Tracker </td>
    <td> #ID:tracker </td>
    <td> Bug </td>
    <td> Feature request </td>
  </tr>
  <tr>
    <td> Priority </td>
    <td> #ID:priority </td>
    <td> Normal </td>
    <td> Low </td>
  </tr>
  <tr>
    <td> Author </td>
    <td> #ID:author </td>
    <td> John Smith </td>
    <td> John Smith </td>
  </tr>
  <tr>
    <td> Assigned To </td>
    <td> #ID:assigned_to </td>
    <td> ? </td>
    <td> ? </td>
  </tr>
  <tr>
    <td> Fixed Version </td>
    <td> #ID:fixed_version </td>
    <td> ? </td>
    <td> ? </td>
  </tr>
  <tr>
    <td> Category </td>
    <td> #ID:category </td>
    <td> ? </td>
    <td> ? </td>
  </tr>
  <tr>
    <td> Parent </td>
    <td> #ID:parent </td>
    <td> ? </td>
    <td> ? </td>
  </tr>
  <tr>
    <td> Closed? </td>
    <td> #ID:closed? </td>
    <td> no </td>
    <td> no </td>
  </tr>
  <tr>
    <td> Overdue? </td>
    <td> #ID:overdue? </td>
    <td> no </td>
    <td> no </td>
  </tr>
  <tr>
    <td> Behind Schedule? </td>
    <td> #ID:behind_schedule? </td>
    <td> yes </td>
    <td> no </td>
  </tr>
  <tr>
    <td> Blocked? </td>
    <td> #ID:blocked? </td>
    <td> no </td>
    <td> no </td>
  </tr>
  <tr>
    <td> Spent Hours </td>
    <td> #ID:spent_hours </td>
    <td> 0.0 </td>
    <td> 0.0 </td>
  </tr>
  <tr>
    <td> Total Spent Hours </td>
    <td> #ID:total_spent_hours </td>
    <td> 0.0 </td>
    <td> 0.0 </td>
  </tr>
  <tr>
    <td> Due Before </td>
    <td> #ID:due_before </td>
    <td> 04/23/2014 </td>
    <td> ? </td>
  </tr>
  <tr>
    <td> Duration </td>
    <td> #ID:duration </td>
    <td> 1/1 </td>
    <td> 0 </td>
  </tr>
  <tr>
    <td> Working Duration </td>
    <td> #ID:working_duration </td>
    <td> 1 </td>
    <td> 0 </td>
  </tr>
</tbody></table>


<h3>Evolved attributes</h3>

<table>
  <tbody><tr>
    <th>Attribute </th>
    <th>Format </th>
    <th>Example 1 with issue <a href="/issues/10" class="issue tracker-1 status-1 priority-5 priority-default" title="Issue Doing the Blocking (New)">#10</a> </th>
    <th>Example 2 with issue <a href="/issues/13" class="issue tracker-2 status-1 priority-4 priority-lowest" title="Subproject issue two (New)">#13</a> </th>
  </tr>
  <tr>
    <td> Summary </td>
    <td> #ID:summary </td>
    <td> Bug #10: Issue Doing the Blocking </td>
    <td> Feature request #13: Subproject issue two </td>
  </tr>
  <tr>
    <td> Progress Bar </td>
    <td> #ID:progress </td>
    <td> <table class="progress" style="width: 100px;;"><tbody><tr><td class="todo" style="width: 100%;"></td></tr></tbody></table><p class="percent"></p> </td>
    <td> <table class="progress" style="width: 100px;;"><tbody><tr><td class="closed" style="width: 60%;"></td><td class="todo" style="width: 40%;"></td></tr></tbody></table><p class="percent"></p> </td>
  </tr>
</tbody></table>


Contributing
------------

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
