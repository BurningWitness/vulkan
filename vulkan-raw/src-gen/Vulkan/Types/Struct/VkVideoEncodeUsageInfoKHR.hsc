{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_encode_queue

module Vulkan.Types.Struct.VkVideoEncodeUsageInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkVideoEncodeContentFlagsKHR
import Vulkan.Types.Enum.VkVideoEncodeTuningModeKHR
import Vulkan.Types.Enum.VkVideoEncodeUsageFlagsKHR



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEncodeUsageInfoKHR" #-} VkVideoEncodeUsageInfoKHR =
       VkVideoEncodeUsageInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , videoUsageHints :: VkVideoEncodeUsageFlagsKHR
         , videoContentHints :: VkVideoEncodeContentFlagsKHR
         , tuningMode :: VkVideoEncodeTuningModeKHR
         }

instance Storable VkVideoEncodeUsageInfoKHR where
  sizeOf    _ = #{size      VkVideoEncodeUsageInfoKHR}
  alignment _ = #{alignment VkVideoEncodeUsageInfoKHR}

  peek ptr = 
    VkVideoEncodeUsageInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"videoUsageHints" ptr)
       <*> peek (offset @"videoContentHints" ptr)
       <*> peek (offset @"tuningMode" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"videoUsageHints" ptr val
    pokeField @"videoContentHints" ptr val
    pokeField @"tuningMode" ptr val

instance Offset "sType" VkVideoEncodeUsageInfoKHR where
  rawOffset = #{offset VkVideoEncodeUsageInfoKHR, sType}

instance Offset "pNext" VkVideoEncodeUsageInfoKHR where
  rawOffset = #{offset VkVideoEncodeUsageInfoKHR, pNext}

instance Offset "videoUsageHints" VkVideoEncodeUsageInfoKHR where
  rawOffset = #{offset VkVideoEncodeUsageInfoKHR, videoUsageHints}

instance Offset "videoContentHints" VkVideoEncodeUsageInfoKHR where
  rawOffset = #{offset VkVideoEncodeUsageInfoKHR, videoContentHints}

instance Offset "tuningMode" VkVideoEncodeUsageInfoKHR where
  rawOffset = #{offset VkVideoEncodeUsageInfoKHR, tuningMode}

#else

module Vulkan.Types.Struct.VkVideoEncodeUsageInfoKHR where

#endif