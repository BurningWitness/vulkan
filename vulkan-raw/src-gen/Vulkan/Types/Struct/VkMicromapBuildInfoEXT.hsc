{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_opacity_micromap

module Vulkan.Types.Struct.VkMicromapBuildInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import GHC.Records
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkBuildMicromapFlagsEXT
import Vulkan.Types.Enum.VkBuildMicromapModeEXT
import Vulkan.Types.Enum.VkMicromapTypeEXT
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkMicromapUsageEXT
import Vulkan.Types.Union.VkDeviceOrHostAddressConstKHR
import Vulkan.Types.Union.VkDeviceOrHostAddressKHR



data {-# CTYPE "vulkan/vulkan.h" "VkMicromapBuildInfoEXT" #-} VkMicromapBuildInfoEXT =
       VkMicromapBuildInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , type_ :: VkMicromapTypeEXT
         , flags :: VkBuildMicromapFlagsEXT
         , mode :: VkBuildMicromapModeEXT
         , dstMicromap :: VkMicromapEXT
         , usageCountsCount :: #{type uint32_t}
         , pUsageCounts :: Ptr VkMicromapUsageEXT
         , ppUsageCounts :: Ptr (Ptr VkMicromapUsageEXT)
         , data_ :: VkDeviceOrHostAddressConstKHR
         , scratchData :: VkDeviceOrHostAddressKHR
         , triangleArray :: VkDeviceOrHostAddressConstKHR
         , triangleArrayStride :: VkDeviceSize
         }

instance Storable VkMicromapBuildInfoEXT where
  sizeOf    _ = #{size      struct VkMicromapBuildInfoEXT}
  alignment _ = #{alignment struct VkMicromapBuildInfoEXT}

  peek ptr = 
    VkMicromapBuildInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"type" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"mode" ptr)
       <*> peek (offset @"dstMicromap" ptr)
       <*> peek (offset @"usageCountsCount" ptr)
       <*> peek (offset @"pUsageCounts" ptr)
       <*> peek (offset @"ppUsageCounts" ptr)
       <*> peek (offset @"data" ptr)
       <*> peek (offset @"scratchData" ptr)
       <*> peek (offset @"triangleArray" ptr)
       <*> peek (offset @"triangleArrayStride" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"type" ptr val
    pokeField @"flags" ptr val
    pokeField @"mode" ptr val
    pokeField @"dstMicromap" ptr val
    pokeField @"usageCountsCount" ptr val
    pokeField @"pUsageCounts" ptr val
    pokeField @"ppUsageCounts" ptr val
    pokeField @"data" ptr val
    pokeField @"scratchData" ptr val
    pokeField @"triangleArray" ptr val
    pokeField @"triangleArrayStride" ptr val

instance Offset "sType" VkMicromapBuildInfoEXT where
  rawOffset = #{offset struct VkMicromapBuildInfoEXT, sType}

instance Offset "pNext" VkMicromapBuildInfoEXT where
  rawOffset = #{offset struct VkMicromapBuildInfoEXT, pNext}

instance Offset "type_" VkMicromapBuildInfoEXT where
  rawOffset = #{offset struct VkMicromapBuildInfoEXT, type}

instance Offset "flags" VkMicromapBuildInfoEXT where
  rawOffset = #{offset struct VkMicromapBuildInfoEXT, flags}

instance Offset "mode" VkMicromapBuildInfoEXT where
  rawOffset = #{offset struct VkMicromapBuildInfoEXT, mode}

instance Offset "dstMicromap" VkMicromapBuildInfoEXT where
  rawOffset = #{offset struct VkMicromapBuildInfoEXT, dstMicromap}

instance Offset "usageCountsCount" VkMicromapBuildInfoEXT where
  rawOffset = #{offset struct VkMicromapBuildInfoEXT, usageCountsCount}

instance Offset "pUsageCounts" VkMicromapBuildInfoEXT where
  rawOffset = #{offset struct VkMicromapBuildInfoEXT, pUsageCounts}

instance Offset "ppUsageCounts" VkMicromapBuildInfoEXT where
  rawOffset = #{offset struct VkMicromapBuildInfoEXT, ppUsageCounts}

instance Offset "data_" VkMicromapBuildInfoEXT where
  rawOffset = #{offset struct VkMicromapBuildInfoEXT, data}

instance Offset "scratchData" VkMicromapBuildInfoEXT where
  rawOffset = #{offset struct VkMicromapBuildInfoEXT, scratchData}

instance Offset "triangleArray" VkMicromapBuildInfoEXT where
  rawOffset = #{offset struct VkMicromapBuildInfoEXT, triangleArray}

instance Offset "triangleArrayStride" VkMicromapBuildInfoEXT where
  rawOffset = #{offset struct VkMicromapBuildInfoEXT, triangleArrayStride}

instance Offset "type" VkMicromapBuildInfoEXT where
  rawOffset = rawOffset @"type_" @VkMicromapBuildInfoEXT

instance Offset "data" VkMicromapBuildInfoEXT where
  rawOffset = rawOffset @"data_" @VkMicromapBuildInfoEXT

instance HasField "type" VkMicromapBuildInfoEXT VkMicromapTypeEXT where
  getField = getField @"type_" @VkMicromapBuildInfoEXT

instance HasField "data" VkMicromapBuildInfoEXT VkDeviceOrHostAddressConstKHR where
  getField = getField @"data_" @VkMicromapBuildInfoEXT

#else

module Vulkan.Types.Struct.VkMicromapBuildInfoEXT where

#endif