from locust import HttpUser, TaskSet, task

class UserBehavior(TaskSet):
    def on_start(self):
        self.index()

    @task(1)
    def index(self):
         self.client.get("/")

class WebsiteUser(HttpUser):
    task_set = UserBehavior
    min_wait = 5000
    max_wait = 9000

