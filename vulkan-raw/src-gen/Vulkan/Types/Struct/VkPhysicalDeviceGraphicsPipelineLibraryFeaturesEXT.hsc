{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_graphics_pipeline_library

module Vulkan.Types.Struct.VkPhysicalDeviceGraphicsPipelineLibraryFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceGraphicsPipelineLibraryFeaturesEXT" #-} VkPhysicalDeviceGraphicsPipelineLibraryFeaturesEXT =
       VkPhysicalDeviceGraphicsPipelineLibraryFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , graphicsPipelineLibrary :: VkBool32
         }

instance Storable VkPhysicalDeviceGraphicsPipelineLibraryFeaturesEXT where
  sizeOf    _ = #{size      struct VkPhysicalDeviceGraphicsPipelineLibraryFeaturesEXT}
  alignment _ = #{alignment struct VkPhysicalDeviceGraphicsPipelineLibraryFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceGraphicsPipelineLibraryFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"graphicsPipelineLibrary" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"graphicsPipelineLibrary" ptr val

instance Offset "sType" VkPhysicalDeviceGraphicsPipelineLibraryFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceGraphicsPipelineLibraryFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceGraphicsPipelineLibraryFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceGraphicsPipelineLibraryFeaturesEXT, pNext}

instance Offset "graphicsPipelineLibrary" VkPhysicalDeviceGraphicsPipelineLibraryFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceGraphicsPipelineLibraryFeaturesEXT, graphicsPipelineLibrary}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceGraphicsPipelineLibraryFeaturesEXT where

#endif