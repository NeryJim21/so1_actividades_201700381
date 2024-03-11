#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>

void thread_create(void *(*start_routine)(void *), void *arg) {
    pthread_t tid;
    pthread_create(&tid, NULL, start_routine, arg);
}

int main() {
    pid_t pid;
    
    pid = fork();
    
    if (pid == 0) { /* child process */
        fork();
        thread_create(&some_function, NULL);
    }
    
    fork();

    return 0;
}

void *some_function(void *arg) {
    printf("Thread is running...\n");
    return NULL;
}