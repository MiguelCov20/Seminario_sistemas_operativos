#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

//Funcion a ejecutar en los hilos
    void *sumas_(void *threadid) {
        int num1 = 5;
        int num2 = 8;
        long tid = (long)threadid;

        int r = num1 + num2;
        printf("Sumas desde el hilo #%ld\n", tid);
        pthread_exit(NULL);
    }

int main(){

    int num_threads = 5;
    // Arreglo de identificadores de hilos
    pthread_t threads[num_threads];
    int rc;
    long t;
    
    // Crear e inicializar hilos
    for(t = 0; t < num_threads; t++) {
        printf("Creando hilo %ld...\n", t);
        rc = pthread_create(&threads[t], NULL, sumas_, (void *)t);
        if (rc) {
            printf("ERROR; return de codigo desde pthread_create() is %d\n", rc);
            exit(-1);
        }
    }

    // Administrar el ciclo de vida de los hilos
    // Esperar a que los hilos terminen
    for(t = 0; t < num_threads; t++) {
        pthread_join(threads[t], NULL);
    }

    printf("program completed. Exiting...\n");
    pthread_exit(NULL);
    
    return 0;
}