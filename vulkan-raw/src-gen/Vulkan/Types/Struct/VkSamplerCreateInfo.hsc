{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkSamplerCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkBorderColor
import Vulkan.Types.Enum.VkCompareOp
import Vulkan.Types.Enum.VkFilter
import Vulkan.Types.Enum.VkSamplerAddressMode
import Vulkan.Types.Enum.VkSamplerCreateFlags
import Vulkan.Types.Enum.VkSamplerMipmapMode
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkSamplerCreateInfo" #-} VkSamplerCreateInfo =
       VkSamplerCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkSamplerCreateFlags
         , magFilter :: VkFilter -- ^ Filter mode for magnification
         , minFilter :: VkFilter -- ^ Filter mode for minifiation
         , mipmapMode :: VkSamplerMipmapMode -- ^ Mipmap selection mode
         , addressModeU :: VkSamplerAddressMode
         , addressModeV :: VkSamplerAddressMode
         , addressModeW :: VkSamplerAddressMode
         , mipLodBias :: #{type float}
         , anisotropyEnable :: VkBool32
         , maxAnisotropy :: #{type float}
         , compareEnable :: VkBool32
         , compareOp :: VkCompareOp
         , minLod :: #{type float}
         , maxLod :: #{type float}
         , borderColor :: VkBorderColor
         , unnormalizedCoordinates :: VkBool32
         }

instance Storable VkSamplerCreateInfo where
  sizeOf    _ = #{size      VkSamplerCreateInfo}
  alignment _ = #{alignment VkSamplerCreateInfo}

  peek ptr = 
    VkSamplerCreateInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"magFilter" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minFilter" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"mipmapMode" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"addressModeU" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"addressModeV" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"addressModeW" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"mipLodBias" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"anisotropyEnable" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxAnisotropy" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"compareEnable" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"compareOp" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minLod" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxLod" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"borderColor" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"unnormalizedCoordinates" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"magFilter" ptr val
    pokeField @"minFilter" ptr val
    pokeField @"mipmapMode" ptr val
    pokeField @"addressModeU" ptr val
    pokeField @"addressModeV" ptr val
    pokeField @"addressModeW" ptr val
    pokeField @"mipLodBias" ptr val
    pokeField @"anisotropyEnable" ptr val
    pokeField @"maxAnisotropy" ptr val
    pokeField @"compareEnable" ptr val
    pokeField @"compareOp" ptr val
    pokeField @"minLod" ptr val
    pokeField @"maxLod" ptr val
    pokeField @"borderColor" ptr val
    pokeField @"unnormalizedCoordinates" ptr val

instance Offset "sType" VkSamplerCreateInfo where
  rawOffset = #{offset VkSamplerCreateInfo, sType}

instance Offset "pNext" VkSamplerCreateInfo where
  rawOffset = #{offset VkSamplerCreateInfo, pNext}

instance Offset "flags" VkSamplerCreateInfo where
  rawOffset = #{offset VkSamplerCreateInfo, flags}

instance Offset "magFilter" VkSamplerCreateInfo where
  rawOffset = #{offset VkSamplerCreateInfo, magFilter}

instance Offset "minFilter" VkSamplerCreateInfo where
  rawOffset = #{offset VkSamplerCreateInfo, minFilter}

instance Offset "mipmapMode" VkSamplerCreateInfo where
  rawOffset = #{offset VkSamplerCreateInfo, mipmapMode}

instance Offset "addressModeU" VkSamplerCreateInfo where
  rawOffset = #{offset VkSamplerCreateInfo, addressModeU}

instance Offset "addressModeV" VkSamplerCreateInfo where
  rawOffset = #{offset VkSamplerCreateInfo, addressModeV}

instance Offset "addressModeW" VkSamplerCreateInfo where
  rawOffset = #{offset VkSamplerCreateInfo, addressModeW}

instance Offset "mipLodBias" VkSamplerCreateInfo where
  rawOffset = #{offset VkSamplerCreateInfo, mipLodBias}

instance Offset "anisotropyEnable" VkSamplerCreateInfo where
  rawOffset = #{offset VkSamplerCreateInfo, anisotropyEnable}

instance Offset "maxAnisotropy" VkSamplerCreateInfo where
  rawOffset = #{offset VkSamplerCreateInfo, maxAnisotropy}

instance Offset "compareEnable" VkSamplerCreateInfo where
  rawOffset = #{offset VkSamplerCreateInfo, compareEnable}

instance Offset "compareOp" VkSamplerCreateInfo where
  rawOffset = #{offset VkSamplerCreateInfo, compareOp}

instance Offset "minLod" VkSamplerCreateInfo where
  rawOffset = #{offset VkSamplerCreateInfo, minLod}

instance Offset "maxLod" VkSamplerCreateInfo where
  rawOffset = #{offset VkSamplerCreateInfo, maxLod}

instance Offset "borderColor" VkSamplerCreateInfo where
  rawOffset = #{offset VkSamplerCreateInfo, borderColor}

instance Offset "unnormalizedCoordinates" VkSamplerCreateInfo where
  rawOffset = #{offset VkSamplerCreateInfo, unnormalizedCoordinates}