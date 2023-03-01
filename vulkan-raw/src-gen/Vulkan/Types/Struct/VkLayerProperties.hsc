{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkLayerProperties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkLayerProperties" #-} VkLayerProperties =
       VkLayerProperties
         { layerName :: #{type char} -- ^ layer name
         , specVersion :: #{type uint32_t} -- ^ version of the layer specification implemented
         , implementationVersion :: #{type uint32_t} -- ^ build or release version of the layer's library
         , description :: #{type char} -- ^ Free-form description of the layer
         }

instance Storable VkLayerProperties where
  sizeOf    _ = #{size      VkLayerProperties}
  alignment _ = #{alignment VkLayerProperties}

  peek ptr = 
    VkLayerProperties
       <$> peek (Foreign.Storable.Offset.offset @"layerName" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"specVersion" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"implementationVersion" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"description" ptr)

  poke ptr val = do
    pokeField @"layerName" ptr val
    pokeField @"specVersion" ptr val
    pokeField @"implementationVersion" ptr val
    pokeField @"description" ptr val

instance Offset "layerName" VkLayerProperties where
  rawOffset = #{offset VkLayerProperties, layerName}

instance Offset "specVersion" VkLayerProperties where
  rawOffset = #{offset VkLayerProperties, specVersion}

instance Offset "implementationVersion" VkLayerProperties where
  rawOffset = #{offset VkLayerProperties, implementationVersion}

instance Offset "description" VkLayerProperties where
  rawOffset = #{offset VkLayerProperties, description}