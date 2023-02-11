{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_pipeline_protected_access

module Vulkan.Types.Struct.VkPhysicalDevicePipelineProtectedAccessFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDevicePipelineProtectedAccessFeaturesEXT" #-} VkPhysicalDevicePipelineProtectedAccessFeaturesEXT =
       VkPhysicalDevicePipelineProtectedAccessFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pipelineProtectedAccess :: VkBool32
         }

instance Storable VkPhysicalDevicePipelineProtectedAccessFeaturesEXT where
  sizeOf    _ = #{size      struct VkPhysicalDevicePipelineProtectedAccessFeaturesEXT}
  alignment _ = #{alignment struct VkPhysicalDevicePipelineProtectedAccessFeaturesEXT}

  peek ptr = 
    VkPhysicalDevicePipelineProtectedAccessFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"pipelineProtectedAccess" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pipelineProtectedAccess" ptr val

instance Offset "sType" VkPhysicalDevicePipelineProtectedAccessFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDevicePipelineProtectedAccessFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDevicePipelineProtectedAccessFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDevicePipelineProtectedAccessFeaturesEXT, pNext}

instance Offset "pipelineProtectedAccess" VkPhysicalDevicePipelineProtectedAccessFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDevicePipelineProtectedAccessFeaturesEXT, pipelineProtectedAccess}

#else

module Vulkan.Types.Struct.VkPhysicalDevicePipelineProtectedAccessFeaturesEXT where

#endif