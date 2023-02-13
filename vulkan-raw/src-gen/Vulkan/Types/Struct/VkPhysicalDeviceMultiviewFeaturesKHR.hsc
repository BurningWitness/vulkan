{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_multiview

module Vulkan.Types.Struct.VkPhysicalDeviceMultiviewFeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceMultiviewFeaturesKHR" #-} VkPhysicalDeviceMultiviewFeaturesKHR =
       VkPhysicalDeviceMultiviewFeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , multiview :: VkBool32 -- ^ Multiple views in a renderpass
         , multiviewGeometryShader :: VkBool32 -- ^ Multiple views in a renderpass w/ geometry shader
         , multiviewTessellationShader :: VkBool32 -- ^ Multiple views in a renderpass w/ tessellation shader
         }

instance Storable VkPhysicalDeviceMultiviewFeaturesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceMultiviewFeaturesKHR}
  alignment _ = #{alignment VkPhysicalDeviceMultiviewFeaturesKHR}

  peek ptr = 
    VkPhysicalDeviceMultiviewFeaturesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"multiview" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"multiviewGeometryShader" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"multiviewTessellationShader" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"multiview" ptr val
    pokeField @"multiviewGeometryShader" ptr val
    pokeField @"multiviewTessellationShader" ptr val

instance Offset "sType" VkPhysicalDeviceMultiviewFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceMultiviewFeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceMultiviewFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceMultiviewFeaturesKHR, pNext}

instance Offset "multiview" VkPhysicalDeviceMultiviewFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceMultiviewFeaturesKHR, multiview}

instance Offset "multiviewGeometryShader" VkPhysicalDeviceMultiviewFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceMultiviewFeaturesKHR, multiviewGeometryShader}

instance Offset "multiviewTessellationShader" VkPhysicalDeviceMultiviewFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceMultiviewFeaturesKHR, multiviewTessellationShader}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceMultiviewFeaturesKHR where

#endif