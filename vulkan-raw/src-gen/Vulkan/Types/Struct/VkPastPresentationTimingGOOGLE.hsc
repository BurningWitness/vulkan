{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_GOOGLE_display_timing

module Vulkan.Types.Struct.VkPastPresentationTimingGOOGLE where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkPastPresentationTimingGOOGLE" #-} VkPastPresentationTimingGOOGLE =
       VkPastPresentationTimingGOOGLE
         { presentID :: #{type uint32_t} -- ^ Application-provided identifier, previously given to vkQueuePresentKHR
         , desiredPresentTime :: #{type uint64_t} -- ^ Earliest time an image should have been presented, previously given to vkQueuePresentKHR
         , actualPresentTime :: #{type uint64_t} -- ^ Time the image was actually displayed
         , earliestPresentTime :: #{type uint64_t} -- ^ Earliest time the image could have been displayed
         , presentMargin :: #{type uint64_t} -- ^ How early vkQueuePresentKHR was processed vs. how soon it needed to be and make earliestPresentTime
         }

instance Storable VkPastPresentationTimingGOOGLE where
  sizeOf    _ = #{size      VkPastPresentationTimingGOOGLE}
  alignment _ = #{alignment VkPastPresentationTimingGOOGLE}

  peek ptr = 
    VkPastPresentationTimingGOOGLE
       <$> peek (Foreign.Storable.Offset.offset @"presentID" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"desiredPresentTime" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"actualPresentTime" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"earliestPresentTime" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"presentMargin" ptr)

  poke ptr val = do
    pokeField @"presentID" ptr val
    pokeField @"desiredPresentTime" ptr val
    pokeField @"actualPresentTime" ptr val
    pokeField @"earliestPresentTime" ptr val
    pokeField @"presentMargin" ptr val

instance Offset "presentID" VkPastPresentationTimingGOOGLE where
  rawOffset = #{offset VkPastPresentationTimingGOOGLE, presentID}

instance Offset "desiredPresentTime" VkPastPresentationTimingGOOGLE where
  rawOffset = #{offset VkPastPresentationTimingGOOGLE, desiredPresentTime}

instance Offset "actualPresentTime" VkPastPresentationTimingGOOGLE where
  rawOffset = #{offset VkPastPresentationTimingGOOGLE, actualPresentTime}

instance Offset "earliestPresentTime" VkPastPresentationTimingGOOGLE where
  rawOffset = #{offset VkPastPresentationTimingGOOGLE, earliestPresentTime}

instance Offset "presentMargin" VkPastPresentationTimingGOOGLE where
  rawOffset = #{offset VkPastPresentationTimingGOOGLE, presentMargin}

#else

module Vulkan.Types.Struct.VkPastPresentationTimingGOOGLE where

#endif