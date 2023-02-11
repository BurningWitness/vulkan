{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkPhysicalDeviceMaintenance3Properties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceMaintenance3Properties" #-} VkPhysicalDeviceMaintenance3Properties =
       VkPhysicalDeviceMaintenance3Properties
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxPerSetDescriptors :: #{type uint32_t}
         , maxMemoryAllocationSize :: VkDeviceSize
         }

instance Storable VkPhysicalDeviceMaintenance3Properties where
  sizeOf    _ = #{size      struct VkPhysicalDeviceMaintenance3Properties}
  alignment _ = #{alignment struct VkPhysicalDeviceMaintenance3Properties}

  peek ptr = 
    VkPhysicalDeviceMaintenance3Properties
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"maxPerSetDescriptors" ptr)
       <*> peek (offset @"maxMemoryAllocationSize" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxPerSetDescriptors" ptr val
    pokeField @"maxMemoryAllocationSize" ptr val

instance Offset "sType" VkPhysicalDeviceMaintenance3Properties where
  rawOffset = #{offset struct VkPhysicalDeviceMaintenance3Properties, sType}

instance Offset "pNext" VkPhysicalDeviceMaintenance3Properties where
  rawOffset = #{offset struct VkPhysicalDeviceMaintenance3Properties, pNext}

instance Offset "maxPerSetDescriptors" VkPhysicalDeviceMaintenance3Properties where
  rawOffset = #{offset struct VkPhysicalDeviceMaintenance3Properties, maxPerSetDescriptors}

instance Offset "maxMemoryAllocationSize" VkPhysicalDeviceMaintenance3Properties where
  rawOffset = #{offset struct VkPhysicalDeviceMaintenance3Properties, maxMemoryAllocationSize}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceMaintenance3Properties where

#endif