{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_FUCHSIA_buffer_collection

module Vulkan.Types.Struct.VkImageFormatConstraintsInfoFUCHSIA where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkFormatFeatureFlags
import Vulkan.Types.Enum.VkImageFormatConstraintsFlagsFUCHSIA
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkImageCreateInfo
import Vulkan.Types.Struct.VkSysmemColorSpaceFUCHSIA



data {-# CTYPE "vulkan/vulkan.h" "VkImageFormatConstraintsInfoFUCHSIA" #-} VkImageFormatConstraintsInfoFUCHSIA =
       VkImageFormatConstraintsInfoFUCHSIA
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , imageCreateInfo :: VkImageCreateInfo
         , requiredFormatFeatures :: VkFormatFeatureFlags
         , flags :: VkImageFormatConstraintsFlagsFUCHSIA
         , sysmemPixelFormat :: #{type uint64_t}
         , colorSpaceCount :: #{type uint32_t}
         , pColorSpaces :: Ptr VkSysmemColorSpaceFUCHSIA
         }

instance Storable VkImageFormatConstraintsInfoFUCHSIA where
  sizeOf    _ = #{size      VkImageFormatConstraintsInfoFUCHSIA}
  alignment _ = #{alignment VkImageFormatConstraintsInfoFUCHSIA}

  peek ptr = 
    VkImageFormatConstraintsInfoFUCHSIA
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"imageCreateInfo" ptr)
       <*> peek (offset @"requiredFormatFeatures" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"sysmemPixelFormat" ptr)
       <*> peek (offset @"colorSpaceCount" ptr)
       <*> peek (offset @"pColorSpaces" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"imageCreateInfo" ptr val
    pokeField @"requiredFormatFeatures" ptr val
    pokeField @"flags" ptr val
    pokeField @"sysmemPixelFormat" ptr val
    pokeField @"colorSpaceCount" ptr val
    pokeField @"pColorSpaces" ptr val

instance Offset "sType" VkImageFormatConstraintsInfoFUCHSIA where
  rawOffset = #{offset VkImageFormatConstraintsInfoFUCHSIA, sType}

instance Offset "pNext" VkImageFormatConstraintsInfoFUCHSIA where
  rawOffset = #{offset VkImageFormatConstraintsInfoFUCHSIA, pNext}

instance Offset "imageCreateInfo" VkImageFormatConstraintsInfoFUCHSIA where
  rawOffset = #{offset VkImageFormatConstraintsInfoFUCHSIA, imageCreateInfo}

instance Offset "requiredFormatFeatures" VkImageFormatConstraintsInfoFUCHSIA where
  rawOffset = #{offset VkImageFormatConstraintsInfoFUCHSIA, requiredFormatFeatures}

instance Offset "flags" VkImageFormatConstraintsInfoFUCHSIA where
  rawOffset = #{offset VkImageFormatConstraintsInfoFUCHSIA, flags}

instance Offset "sysmemPixelFormat" VkImageFormatConstraintsInfoFUCHSIA where
  rawOffset = #{offset VkImageFormatConstraintsInfoFUCHSIA, sysmemPixelFormat}

instance Offset "colorSpaceCount" VkImageFormatConstraintsInfoFUCHSIA where
  rawOffset = #{offset VkImageFormatConstraintsInfoFUCHSIA, colorSpaceCount}

instance Offset "pColorSpaces" VkImageFormatConstraintsInfoFUCHSIA where
  rawOffset = #{offset VkImageFormatConstraintsInfoFUCHSIA, pColorSpaces}

#else

module Vulkan.Types.Struct.VkImageFormatConstraintsInfoFUCHSIA where

#endif