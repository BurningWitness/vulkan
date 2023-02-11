{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_GOOGLE_display_timing

module Vulkan.Types.Struct.VkRefreshCycleDurationGOOGLE where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkRefreshCycleDurationGOOGLE" #-} VkRefreshCycleDurationGOOGLE =
       VkRefreshCycleDurationGOOGLE
         { refreshDuration :: #{type uint64_t} -- ^ Number of nanoseconds from the start of one refresh cycle to the next
         }

instance Storable VkRefreshCycleDurationGOOGLE where
  sizeOf    _ = #{size      struct VkRefreshCycleDurationGOOGLE}
  alignment _ = #{alignment struct VkRefreshCycleDurationGOOGLE}

  peek ptr = 
    VkRefreshCycleDurationGOOGLE
       <$> peek (offset @"refreshDuration" ptr)


  poke ptr val = do
    pokeField @"refreshDuration" ptr val

instance Offset "refreshDuration" VkRefreshCycleDurationGOOGLE where
  rawOffset = #{offset struct VkRefreshCycleDurationGOOGLE, refreshDuration}

#else

module Vulkan.Types.Struct.VkRefreshCycleDurationGOOGLE where

#endif