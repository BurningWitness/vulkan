{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Struct.VkPhysicalDeviceExtendedDynamicState3PropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceExtendedDynamicState3PropertiesEXT" #-} VkPhysicalDeviceExtendedDynamicState3PropertiesEXT =
       VkPhysicalDeviceExtendedDynamicState3PropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , dynamicPrimitiveTopologyUnrestricted :: VkBool32
         }

instance Storable VkPhysicalDeviceExtendedDynamicState3PropertiesEXT where
  sizeOf    _ = #{size      struct VkPhysicalDeviceExtendedDynamicState3PropertiesEXT}
  alignment _ = #{alignment struct VkPhysicalDeviceExtendedDynamicState3PropertiesEXT}

  peek ptr = 
    VkPhysicalDeviceExtendedDynamicState3PropertiesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"dynamicPrimitiveTopologyUnrestricted" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"dynamicPrimitiveTopologyUnrestricted" ptr val

instance Offset "sType" VkPhysicalDeviceExtendedDynamicState3PropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceExtendedDynamicState3PropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceExtendedDynamicState3PropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceExtendedDynamicState3PropertiesEXT, pNext}

instance Offset "dynamicPrimitiveTopologyUnrestricted" VkPhysicalDeviceExtendedDynamicState3PropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceExtendedDynamicState3PropertiesEXT, dynamicPrimitiveTopologyUnrestricted}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceExtendedDynamicState3PropertiesEXT where

#endif