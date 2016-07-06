//
//  ZeroMQFunctions.cpp
//  ZeroMQ
//
//  Created by Stephan Korner on 03/07/16.
//  Copyright © 2016 Stephan Korner. All rights reserved.
//

#include "ZeroMQFunctions.hpp"
#include "zHelpers.h"

//
//  Client-side pirate
//  Use zmq_poll to do a safe request-reply
//  To run, start hwserver and then randomly kill/restart it
//
#define REQUEST_TIMEOUT     2500    //  msecs
#define REQUEST_RETRIES     3       //  Before we abandon

int Main() {
    void *context = zmq_init (1);
    void *client = zmq_socket (context, ZMQ_REQ);
    zmq_connect (client, "tcp://localhost:5555");
    
    //  Socket to talk to server
    printf ("Connecting to hello world server...\n");
    
    int retries_left = REQUEST_RETRIES;
    while (1) {
        s_send(client, (char *)"HELLO");
        zmq_pollitem_t items [] = { { client, 0, ZMQ_POLLIN, 0 } };
        zmq_poll (items, sizeof (items) / sizeof (*items), REQUEST_TIMEOUT * 1000);
        
        if (items [0].revents & ZMQ_POLLIN) {
            //  We got input from the server, happy bunny time
            char *reply = s_recv (client);
            printf ("Reply from server: %s\n", reply);
            free (reply);
            retries_left = REQUEST_RETRIES;
        }
        else {
            //  No response from server
            if (--retries_left == 0) {
                printf ("E: server seems to be offline, abandoning\n");
                break;
            }
            else
                printf ("W: no response from server, retrying...\n");
        }
    }
    zmq_close (client);
    zmq_term (context);
    return 0;
}

int Test() {    
   
    return 0;
}