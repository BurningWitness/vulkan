{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkPhysicalDeviceSubgroupSizeControlProperties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkShaderStageFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceSubgroupSizeControlProperties" #-} VkPhysicalDeviceSubgroupSizeControlProperties =
       VkPhysicalDeviceSubgroupSizeControlProperties
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , minSubgroupSize :: #{type uint32_t} -- ^ The minimum subgroup size supported by this device
         , maxSubgroupSize :: #{type uint32_t} -- ^ The maximum subgroup size supported by this device
         , maxComputeWorkgroupSubgroups :: #{type uint32_t} -- ^ The maximum number of subgroups supported in a workgroup
         , requiredSubgroupSizeStages :: VkShaderStageFlags -- ^ The shader stages that support specifying a subgroup size
         }

instance Storable VkPhysicalDeviceSubgroupSizeControlProperties where
  sizeOf    _ = #{size      VkPhysicalDeviceSubgroupSizeControlProperties}
  alignment _ = #{alignment VkPhysicalDeviceSubgroupSizeControlProperties}

  peek ptr = 
    VkPhysicalDeviceSubgroupSizeControlProperties
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minSubgroupSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxSubgroupSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxComputeWorkgroupSubgroups" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"requiredSubgroupSizeStages" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"minSubgroupSize" ptr val
    pokeField @"maxSubgroupSize" ptr val
    pokeField @"maxComputeWorkgroupSubgroups" ptr val
    pokeField @"requiredSubgroupSizeStages" ptr val

instance Offset "sType" VkPhysicalDeviceSubgroupSizeControlProperties where
  rawOffset = #{offset VkPhysicalDeviceSubgroupSizeControlProperties, sType}

instance Offset "pNext" VkPhysicalDeviceSubgroupSizeControlProperties where
  rawOffset = #{offset VkPhysicalDeviceSubgroupSizeControlProperties, pNext}

instance Offset "minSubgroupSize" VkPhysicalDeviceSubgroupSizeControlProperties where
  rawOffset = #{offset VkPhysicalDeviceSubgroupSizeControlProperties, minSubgroupSize}

instance Offset "maxSubgroupSize" VkPhysicalDeviceSubgroupSizeControlProperties where
  rawOffset = #{offset VkPhysicalDeviceSubgroupSizeControlProperties, maxSubgroupSize}

instance Offset "maxComputeWorkgroupSubgroups" VkPhysicalDeviceSubgroupSizeControlProperties where
  rawOffset = #{offset VkPhysicalDeviceSubgroupSizeControlProperties, maxComputeWorkgroupSubgroups}

instance Offset "requiredSubgroupSizeStages" VkPhysicalDeviceSubgroupSizeControlProperties where
  rawOffset = #{offset VkPhysicalDeviceSubgroupSizeControlProperties, requiredSubgroupSizeStages}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceSubgroupSizeControlProperties where

#endif