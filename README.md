<a name="readme-top"></a>
<h1 align="center">JPACRUDProject</h1>
<h2 align="center">Table of Contents</h2>
<ul>
    <li><a href="#readme-description">Description</a></li>
    <li><a href="#readme-built">Built With</a></li>
    <li><a href="#readme-learned">Things I learned</a></li>
    <li><a href="#readme-future">Next Time</a></li>
    <li><a href="#readme-note">Things of Note</a></li>
    <li><a href="#readme-contact">Contact me</a></li>
</ul>
<a name="readme-description"></a>
<h2 align="center">Description</h2>
<p>This webpage is intended as a tracker for DnD campaigns, allowing a user to create, update, and delete their campaigns with information like the name, the description, and the setting of the campaign. It also allows a user to upload an image to be used as a thumbnail for that campaign. It supports full CRUD operations on Campaign objects<sup>*</sup> and allows a user to update their password if logged in, or create an account. A user is able to search for campaigns by id (if they know the id for some reason), a keyword phrase in the name or description, by setting, or by user. When viewing a campaign, if the user is the one who created it, they can update or delete that campaign, otherwise the campaign is read-only.</p>
<p><sup>*</sup>For campaigns they have created</p>
<p align="right">(<a href="#readme-top">back to top</a>)</p>
<a name="readme-built"></a>
<h2 align="center">Built With</h2>
<p>This application was built with java, SQL, HTML, CSS, BootStrap, SpringMVC, and git/github, Spring Tools Suite, and MySQLWorkbench</p>
<a name="readme-learned"></a>
<h2 align="center">Things learned</h2>
<p>I got a bit more familiar with Bootstrap this project, but otherwise was mainly reinforcing previously learned ideas</p>
<p align="right">(<a href="#readme-top">back to top</a>)</p>
<a name="readme-future"></a>
<h2 align="center">Things to do next time</h2>
<p>Next time, I would like to store the user passwords more securely; currently, they are being stored by having the user enter a String password, then storing the .hashCode() of that String in the database. When the user signs-in, it checks the hash code of the String against the database password. It looks like SHA is the way this is done, but I didn't have the time to learn it this project.</p>
<p align="right">(<a href="#readme-top">back to top</a>)</p>
<a name="readme-note"></a>
<h2 align="center">Things of Note</h2>
<p>I personally like how a user can only edit campaigns that they have created (or if their username is admin). The manage campaign tab button on the nav bar will only function if the user is logged in, otherwise it will tell the user to log in. And once a user is logged in, it shows an "Account" button, that allows the user to update their password. Currently the username of a user is permanent, but not the primary key (it is still unique however).</p>
<p align="right">(<a href="#readme-top">back to top</a>)</p>
<a name="readme-contact"></a>
<h2 align="center">Contact me</h2>
<li>You can contact me at:</li>
<ul>
  <li>github: <a href="https://www.github.com/dopeysboy">github.com/dopeysboy</a></li>
  <li>email: tyler.j.tanner@gmail.com</li>
</ul>
<p align="right">(<a href="#readme-top">back to top</a>)</p>
