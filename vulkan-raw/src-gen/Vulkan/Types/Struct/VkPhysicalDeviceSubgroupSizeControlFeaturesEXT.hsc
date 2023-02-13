{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_subgroup_size_control

module Vulkan.Types.Struct.VkPhysicalDeviceSubgroupSizeControlFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceSubgroupSizeControlFeaturesEXT" #-} VkPhysicalDeviceSubgroupSizeControlFeaturesEXT =
       VkPhysicalDeviceSubgroupSizeControlFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , subgroupSizeControl :: VkBool32
         , computeFullSubgroups :: VkBool32
         }

instance Storable VkPhysicalDeviceSubgroupSizeControlFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceSubgroupSizeControlFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceSubgroupSizeControlFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceSubgroupSizeControlFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"subgroupSizeControl" ptr)
       <*> peek (offset @"computeFullSubgroups" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"subgroupSizeControl" ptr val
    pokeField @"computeFullSubgroups" ptr val

instance Offset "sType" VkPhysicalDeviceSubgroupSizeControlFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceSubgroupSizeControlFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceSubgroupSizeControlFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceSubgroupSizeControlFeaturesEXT, pNext}

instance Offset "subgroupSizeControl" VkPhysicalDeviceSubgroupSizeControlFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceSubgroupSizeControlFeaturesEXT, subgroupSizeControl}

instance Offset "computeFullSubgroups" VkPhysicalDeviceSubgroupSizeControlFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceSubgroupSizeControlFeaturesEXT, computeFullSubgroups}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceSubgroupSizeControlFeaturesEXT where

#endif