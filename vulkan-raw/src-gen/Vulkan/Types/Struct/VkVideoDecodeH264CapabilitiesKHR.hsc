{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_decode_h264

module Vulkan.Types.Struct.VkVideoDecodeH264CapabilitiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkOffset2D



data {-# CTYPE "vulkan/vulkan.h" "VkVideoDecodeH264CapabilitiesKHR" #-} VkVideoDecodeH264CapabilitiesKHR =
       VkVideoDecodeH264CapabilitiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxLevelIdc :: StdVideoH264LevelIdc
         , fieldOffsetGranularity :: VkOffset2D
         }

instance Storable VkVideoDecodeH264CapabilitiesKHR where
  sizeOf    _ = #{size      struct VkVideoDecodeH264CapabilitiesKHR}
  alignment _ = #{alignment struct VkVideoDecodeH264CapabilitiesKHR}

  peek ptr = 
    VkVideoDecodeH264CapabilitiesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"maxLevelIdc" ptr)
       <*> peek (offset @"fieldOffsetGranularity" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxLevelIdc" ptr val
    pokeField @"fieldOffsetGranularity" ptr val

instance Offset "sType" VkVideoDecodeH264CapabilitiesKHR where
  rawOffset = #{offset struct VkVideoDecodeH264CapabilitiesKHR, sType}

instance Offset "pNext" VkVideoDecodeH264CapabilitiesKHR where
  rawOffset = #{offset struct VkVideoDecodeH264CapabilitiesKHR, pNext}

instance Offset "maxLevelIdc" VkVideoDecodeH264CapabilitiesKHR where
  rawOffset = #{offset struct VkVideoDecodeH264CapabilitiesKHR, maxLevelIdc}

instance Offset "fieldOffsetGranularity" VkVideoDecodeH264CapabilitiesKHR where
  rawOffset = #{offset struct VkVideoDecodeH264CapabilitiesKHR, fieldOffsetGranularity}

#else

module Vulkan.Types.Struct.VkVideoDecodeH264CapabilitiesKHR where

#endif