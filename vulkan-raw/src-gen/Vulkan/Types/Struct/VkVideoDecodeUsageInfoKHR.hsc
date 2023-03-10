{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_decode_queue

module Vulkan.Types.Struct.VkVideoDecodeUsageInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkVideoDecodeUsageFlagsKHR



data {-# CTYPE "vulkan/vulkan.h" "VkVideoDecodeUsageInfoKHR" #-} VkVideoDecodeUsageInfoKHR =
       VkVideoDecodeUsageInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , videoUsageHints :: VkVideoDecodeUsageFlagsKHR
         }

instance Storable VkVideoDecodeUsageInfoKHR where
  sizeOf    _ = #{size      VkVideoDecodeUsageInfoKHR}
  alignment _ = #{alignment VkVideoDecodeUsageInfoKHR}

  peek ptr = 
    VkVideoDecodeUsageInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"videoUsageHints" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"videoUsageHints" ptr val

instance Offset "sType" VkVideoDecodeUsageInfoKHR where
  rawOffset = #{offset VkVideoDecodeUsageInfoKHR, sType}

instance Offset "pNext" VkVideoDecodeUsageInfoKHR where
  rawOffset = #{offset VkVideoDecodeUsageInfoKHR, pNext}

instance Offset "videoUsageHints" VkVideoDecodeUsageInfoKHR where
  rawOffset = #{offset VkVideoDecodeUsageInfoKHR, videoUsageHints}

#else

module Vulkan.Types.Struct.VkVideoDecodeUsageInfoKHR where

#endif