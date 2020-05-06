# Madeleine Alwine mea3qr
import re
import urllib.request


def name_to_url(name):
    """Given a name typed in a variety of formats, returns a name in the form: first-middle initial-last to be added
    to a url.
    """
    first_last = []
    if "," in name:
        name = name.split(",")
        for thing in name:
            thing = thing.lower().strip()
            first_last.append(thing)
        name = first_last[1] + "-" + first_last[0]
        name = name.strip().replace(' ', "-")
    name = name.lower().strip().replace(" ", "-")
    if "." in name:
        name = name.replace(".", "")
    return name


def report(name):
    """Given a name, returns that person's job title, salary and rank at UVA. If the person does not have a rank, it
    returns a rank of 0. If this person is not on the salary website, it returns a job title of None, a salary of 0 and
    a rank of 0."""
    title = None
    salary = 0
    rank = 0
    try:
        base_url = "http://cs1110.cs.virginia.edu/files/uva2018/"
        url = base_url + name_to_url(name)
        with urllib.request.urlopen(url) as stream:
            text = stream.read().decode('utf-8')
        title_finder = re.compile("<meta property=\"og:description\" content=\"Job title: ([a-zA-Z0-9&;#/,' ]+)<br />")
        match = title_finder.search(text)
        title = match.group(1)
        title = title.replace("&amp;", "&")
        title = title.replace("&#39;", "'")
        salary_finder = re.compile("<br /> 2018 total gross pay: (\$?[0-9,]+)\" />")
        match = salary_finder.search(text)
        salary = match.group(1)
        salary = salary.strip("$").replace(",", "")
        salary = float(int(salary))
        rank_finder = re.compile(
            "<tr><td>University of Virginia rank</td><td>([0-9,]+) of 8,582<!--not null --></td></tr>")
        match = rank_finder.search(text)
        rank = match.group(1)
        rank = rank.replace(",", "")
        rank = int(rank)
    except:
        return title, salary, rank
    return title, salary, rank
