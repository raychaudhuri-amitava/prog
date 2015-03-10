#ifndef _OBJECT_TYPE_H
#define _OBJECT_TYPE_H

#include <stdint.h>

//#define OBJECT_ID_64

#ifdef OBJECT_ID_64
  typedef uint64_t entity_id_t;
  typedef int64_t  s_entity_id_t;
  typedef uint64_t site_id_t;
  typedef int64_t  s_site_id_t; 
  typedef uint64_t campaign_id_t;
  typedef int64_t  s_campaign_id_t;
  typedef uint64_t creative_id_t;
  typedef int64_t  s_creative_id_t;
  typedef uint64_t li_id_t;
  typedef int64_t  s_li_id_t;
  typedef uint64_t io_id_t;
  typedef int64_t  s_io_id_t;
  typedef uint64_t tp_id_t;
  typedef int64_t  s_tp_id_t;
  typedef uint64_t conversion_id_t;
  typedef int64_t  s_conversion_id_t;
  // mixed_id_t can be entity_id_t, campaign_id_t, creative_id_t and etc
  typedef uint64_t mixed_id_t;
  typedef int64_t  s_mixed_id_t;
#else
/* All basic types */

   typedef uint32_t entity_id_t;
  typedef int32_t  s_entity_id_t;
  typedef uint32_t site_id_t;
  typedef int32_t  s_site_id_t;
  typedef uint32_t campaign_id_t;
  typedef int32_t  s_campaign_id_t;
  typedef uint32_t creative_id_t;
  typedef int32_t  s_creative_id_t;
  typedef uint32_t li_id_t;
  typedef int32_t  s_li_id_t;
  typedef uint32_t io_id_t;
  typedef int32_t  s_io_id_t;
  typedef uint32_t tp_id_t;
  typedef int32_t  s_tp_id_t;
  typedef uint32_t conversion_id_t;
  typedef int32_t  s_conversion_id_t;
  typedef uint32_t mixed_id_t;
  typedef int32_t  s_mixed_id_t;
#endif


#endif
