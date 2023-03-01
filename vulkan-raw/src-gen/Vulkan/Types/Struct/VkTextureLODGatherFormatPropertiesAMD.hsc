{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_AMD_texture_gather_bias_lod

module Vulkan.Types.Struct.VkTextureLODGatherFormatPropertiesAMD where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkTextureLODGatherFormatPropertiesAMD" #-} VkTextureLODGatherFormatPropertiesAMD =
       VkTextureLODGatherFormatPropertiesAMD
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , supportsTextureGatherLODBiasAMD :: VkBool32
         }

instance Storable VkTextureLODGatherFormatPropertiesAMD where
  sizeOf    _ = #{size      VkTextureLODGatherFormatPropertiesAMD}
  alignment _ = #{alignment VkTextureLODGatherFormatPropertiesAMD}

  peek ptr = 
    VkTextureLODGatherFormatPropertiesAMD
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"supportsTextureGatherLODBiasAMD" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"supportsTextureGatherLODBiasAMD" ptr val

instance Offset "sType" VkTextureLODGatherFormatPropertiesAMD where
  rawOffset = #{offset VkTextureLODGatherFormatPropertiesAMD, sType}

instance Offset "pNext" VkTextureLODGatherFormatPropertiesAMD where
  rawOffset = #{offset VkTextureLODGatherFormatPropertiesAMD, pNext}

instance Offset "supportsTextureGatherLODBiasAMD" VkTextureLODGatherFormatPropertiesAMD where
  rawOffset = #{offset VkTextureLODGatherFormatPropertiesAMD, supportsTextureGatherLODBiasAMD}

#else

module Vulkan.Types.Struct.VkTextureLODGatherFormatPropertiesAMD where

#endif