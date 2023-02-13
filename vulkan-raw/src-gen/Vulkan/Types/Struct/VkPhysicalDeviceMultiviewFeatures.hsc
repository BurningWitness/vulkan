{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkPhysicalDeviceMultiviewFeatures where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceMultiviewFeatures" #-} VkPhysicalDeviceMultiviewFeatures =
       VkPhysicalDeviceMultiviewFeatures
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , multiview :: VkBool32 -- ^ Multiple views in a renderpass
         , multiviewGeometryShader :: VkBool32 -- ^ Multiple views in a renderpass w/ geometry shader
         , multiviewTessellationShader :: VkBool32 -- ^ Multiple views in a renderpass w/ tessellation shader
         }

instance Storable VkPhysicalDeviceMultiviewFeatures where
  sizeOf    _ = #{size      VkPhysicalDeviceMultiviewFeatures}
  alignment _ = #{alignment VkPhysicalDeviceMultiviewFeatures}

  peek ptr = 
    VkPhysicalDeviceMultiviewFeatures
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"multiview" ptr)
       <*> peek (offset @"multiviewGeometryShader" ptr)
       <*> peek (offset @"multiviewTessellationShader" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"multiview" ptr val
    pokeField @"multiviewGeometryShader" ptr val
    pokeField @"multiviewTessellationShader" ptr val

instance Offset "sType" VkPhysicalDeviceMultiviewFeatures where
  rawOffset = #{offset VkPhysicalDeviceMultiviewFeatures, sType}

instance Offset "pNext" VkPhysicalDeviceMultiviewFeatures where
  rawOffset = #{offset VkPhysicalDeviceMultiviewFeatures, pNext}

instance Offset "multiview" VkPhysicalDeviceMultiviewFeatures where
  rawOffset = #{offset VkPhysicalDeviceMultiviewFeatures, multiview}

instance Offset "multiviewGeometryShader" VkPhysicalDeviceMultiviewFeatures where
  rawOffset = #{offset VkPhysicalDeviceMultiviewFeatures, multiviewGeometryShader}

instance Offset "multiviewTessellationShader" VkPhysicalDeviceMultiviewFeatures where
  rawOffset = #{offset VkPhysicalDeviceMultiviewFeatures, multiviewTessellationShader}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceMultiviewFeatures where

#endif