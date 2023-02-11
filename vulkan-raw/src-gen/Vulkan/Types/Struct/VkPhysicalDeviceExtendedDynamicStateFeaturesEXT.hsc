{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state

module Vulkan.Types.Struct.VkPhysicalDeviceExtendedDynamicStateFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceExtendedDynamicStateFeaturesEXT" #-} VkPhysicalDeviceExtendedDynamicStateFeaturesEXT =
       VkPhysicalDeviceExtendedDynamicStateFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , extendedDynamicState :: VkBool32
         }

instance Storable VkPhysicalDeviceExtendedDynamicStateFeaturesEXT where
  sizeOf    _ = #{size      struct VkPhysicalDeviceExtendedDynamicStateFeaturesEXT}
  alignment _ = #{alignment struct VkPhysicalDeviceExtendedDynamicStateFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceExtendedDynamicStateFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"extendedDynamicState" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"extendedDynamicState" ptr val

instance Offset "sType" VkPhysicalDeviceExtendedDynamicStateFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceExtendedDynamicStateFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceExtendedDynamicStateFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceExtendedDynamicStateFeaturesEXT, pNext}

instance Offset "extendedDynamicState" VkPhysicalDeviceExtendedDynamicStateFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceExtendedDynamicStateFeaturesEXT, extendedDynamicState}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceExtendedDynamicStateFeaturesEXT where

#endif