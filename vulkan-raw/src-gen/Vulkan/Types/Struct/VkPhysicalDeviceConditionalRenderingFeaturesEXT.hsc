{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_conditional_rendering

module Vulkan.Types.Struct.VkPhysicalDeviceConditionalRenderingFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceConditionalRenderingFeaturesEXT" #-} VkPhysicalDeviceConditionalRenderingFeaturesEXT =
       VkPhysicalDeviceConditionalRenderingFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , conditionalRendering :: VkBool32
         , inheritedConditionalRendering :: VkBool32
         }

instance Storable VkPhysicalDeviceConditionalRenderingFeaturesEXT where
  sizeOf    _ = #{size      struct VkPhysicalDeviceConditionalRenderingFeaturesEXT}
  alignment _ = #{alignment struct VkPhysicalDeviceConditionalRenderingFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceConditionalRenderingFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"conditionalRendering" ptr)
       <*> peek (offset @"inheritedConditionalRendering" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"conditionalRendering" ptr val
    pokeField @"inheritedConditionalRendering" ptr val

instance Offset "sType" VkPhysicalDeviceConditionalRenderingFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceConditionalRenderingFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceConditionalRenderingFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceConditionalRenderingFeaturesEXT, pNext}

instance Offset "conditionalRendering" VkPhysicalDeviceConditionalRenderingFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceConditionalRenderingFeaturesEXT, conditionalRendering}

instance Offset "inheritedConditionalRendering" VkPhysicalDeviceConditionalRenderingFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceConditionalRenderingFeaturesEXT, inheritedConditionalRendering}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceConditionalRenderingFeaturesEXT where

#endif