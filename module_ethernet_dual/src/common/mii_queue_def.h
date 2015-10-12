/*
 * mii_queue_def.h
 *
 *  Created on: Nov 28, 2014
 *      Author: atena
 */

#ifndef MII_QUEUE_DEF_H_
#define MII_QUEUE_DEF_H_

#ifndef NUM_MII_RX_BUF
#define NUM_MII_RX_BUF 5
#endif

#ifndef NUM_MII_TX_BUF
#define NUM_MII_TX_BUF 5
#endif


#define MAC_MAX_NUM_QUEUES 10

#define MAC_MAX_ENTRIES ((NUM_MII_RX_BUF<NUM_MII_TX_BUF?NUM_MII_TX_BUF:NUM_MII_RX_BUF)+1)

typedef struct mii_ts_queue_t {
  int lock;
  int rdIndex;
  int wrIndex;
  unsigned fifo[MAC_MAX_ENTRIES];
} mii_ts_queue_t;

#endif /* MII_QUEUE_DEF_H_ */
