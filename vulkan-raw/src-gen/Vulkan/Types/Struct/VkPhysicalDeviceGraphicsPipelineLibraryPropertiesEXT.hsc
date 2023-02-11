{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_graphics_pipeline_library

module Vulkan.Types.Struct.VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT" #-} VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT =
       VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , graphicsPipelineLibraryFastLinking :: VkBool32
         , graphicsPipelineLibraryIndependentInterpolationDecoration :: VkBool32
         }

instance Storable VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT where
  sizeOf    _ = #{size      struct VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT}
  alignment _ = #{alignment struct VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT}

  peek ptr = 
    VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"graphicsPipelineLibraryFastLinking" ptr)
       <*> peek (offset @"graphicsPipelineLibraryIndependentInterpolationDecoration" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"graphicsPipelineLibraryFastLinking" ptr val
    pokeField @"graphicsPipelineLibraryIndependentInterpolationDecoration" ptr val

instance Offset "sType" VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT, pNext}

instance Offset "graphicsPipelineLibraryFastLinking" VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT, graphicsPipelineLibraryFastLinking}

instance Offset "graphicsPipelineLibraryIndependentInterpolationDecoration" VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT, graphicsPipelineLibraryIndependentInterpolationDecoration}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT where

#endif