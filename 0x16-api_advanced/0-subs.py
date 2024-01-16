#!/usr/bin/python3
"""How many subs?"""


import sys
import requests


def number_of_subscribers(subreddit):
    """Function to return the number of subs"""
    url = f"https://www.reddit.com/r/{subreddit}/about.json"
    response = requests.get(url, allow_redirects=False)

    if response.status_code != 200:
        return 0

    response_json = response.json()
    return response_json.get('data').get('subscribers')
