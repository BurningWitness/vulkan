{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_pipeline_library_group_handles

module Vulkan.Types.Struct.VkPhysicalDevicePipelineLibraryGroupHandlesFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDevicePipelineLibraryGroupHandlesFeaturesEXT" #-} VkPhysicalDevicePipelineLibraryGroupHandlesFeaturesEXT =
       VkPhysicalDevicePipelineLibraryGroupHandlesFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pipelineLibraryGroupHandles :: VkBool32
         }

instance Storable VkPhysicalDevicePipelineLibraryGroupHandlesFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDevicePipelineLibraryGroupHandlesFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDevicePipelineLibraryGroupHandlesFeaturesEXT}

  peek ptr = 
    VkPhysicalDevicePipelineLibraryGroupHandlesFeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pipelineLibraryGroupHandles" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pipelineLibraryGroupHandles" ptr val

instance Offset "sType" VkPhysicalDevicePipelineLibraryGroupHandlesFeaturesEXT where
  rawOffset = #{offset VkPhysicalDevicePipelineLibraryGroupHandlesFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDevicePipelineLibraryGroupHandlesFeaturesEXT where
  rawOffset = #{offset VkPhysicalDevicePipelineLibraryGroupHandlesFeaturesEXT, pNext}

instance Offset "pipelineLibraryGroupHandles" VkPhysicalDevicePipelineLibraryGroupHandlesFeaturesEXT where
  rawOffset = #{offset VkPhysicalDevicePipelineLibraryGroupHandlesFeaturesEXT, pipelineLibraryGroupHandles}

#else

module Vulkan.Types.Struct.VkPhysicalDevicePipelineLibraryGroupHandlesFeaturesEXT where

#endif