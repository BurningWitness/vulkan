{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_subgroup_size_control

module Vulkan.Types.Struct.VkPhysicalDeviceSubgroupSizeControlPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkShaderStageFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceSubgroupSizeControlPropertiesEXT" #-} VkPhysicalDeviceSubgroupSizeControlPropertiesEXT =
       VkPhysicalDeviceSubgroupSizeControlPropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , minSubgroupSize :: #{type uint32_t} -- ^ The minimum subgroup size supported by this device
         , maxSubgroupSize :: #{type uint32_t} -- ^ The maximum subgroup size supported by this device
         , maxComputeWorkgroupSubgroups :: #{type uint32_t} -- ^ The maximum number of subgroups supported in a workgroup
         , requiredSubgroupSizeStages :: VkShaderStageFlags -- ^ The shader stages that support specifying a subgroup size
         }

instance Storable VkPhysicalDeviceSubgroupSizeControlPropertiesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceSubgroupSizeControlPropertiesEXT}
  alignment _ = #{alignment VkPhysicalDeviceSubgroupSizeControlPropertiesEXT}

  peek ptr = 
    VkPhysicalDeviceSubgroupSizeControlPropertiesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"minSubgroupSize" ptr)
       <*> peek (offset @"maxSubgroupSize" ptr)
       <*> peek (offset @"maxComputeWorkgroupSubgroups" ptr)
       <*> peek (offset @"requiredSubgroupSizeStages" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"minSubgroupSize" ptr val
    pokeField @"maxSubgroupSize" ptr val
    pokeField @"maxComputeWorkgroupSubgroups" ptr val
    pokeField @"requiredSubgroupSizeStages" ptr val

instance Offset "sType" VkPhysicalDeviceSubgroupSizeControlPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceSubgroupSizeControlPropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceSubgroupSizeControlPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceSubgroupSizeControlPropertiesEXT, pNext}

instance Offset "minSubgroupSize" VkPhysicalDeviceSubgroupSizeControlPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceSubgroupSizeControlPropertiesEXT, minSubgroupSize}

instance Offset "maxSubgroupSize" VkPhysicalDeviceSubgroupSizeControlPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceSubgroupSizeControlPropertiesEXT, maxSubgroupSize}

instance Offset "maxComputeWorkgroupSubgroups" VkPhysicalDeviceSubgroupSizeControlPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceSubgroupSizeControlPropertiesEXT, maxComputeWorkgroupSubgroups}

instance Offset "requiredSubgroupSizeStages" VkPhysicalDeviceSubgroupSizeControlPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceSubgroupSizeControlPropertiesEXT, requiredSubgroupSizeStages}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceSubgroupSizeControlPropertiesEXT where

#endif