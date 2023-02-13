{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_QCOM_tile_properties

module Vulkan.Types.Struct.VkTilePropertiesQCOM where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExtent2D
import Vulkan.Types.Struct.VkExtent3D
import Vulkan.Types.Struct.VkOffset2D



data {-# CTYPE "vulkan/vulkan.h" "VkTilePropertiesQCOM" #-} VkTilePropertiesQCOM =
       VkTilePropertiesQCOM
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , tileSize :: VkExtent3D
         , apronSize :: VkExtent2D
         , origin :: VkOffset2D
         }

instance Storable VkTilePropertiesQCOM where
  sizeOf    _ = #{size      VkTilePropertiesQCOM}
  alignment _ = #{alignment VkTilePropertiesQCOM}

  peek ptr = 
    VkTilePropertiesQCOM
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"tileSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"apronSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"origin" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"tileSize" ptr val
    pokeField @"apronSize" ptr val
    pokeField @"origin" ptr val

instance Offset "sType" VkTilePropertiesQCOM where
  rawOffset = #{offset VkTilePropertiesQCOM, sType}

instance Offset "pNext" VkTilePropertiesQCOM where
  rawOffset = #{offset VkTilePropertiesQCOM, pNext}

instance Offset "tileSize" VkTilePropertiesQCOM where
  rawOffset = #{offset VkTilePropertiesQCOM, tileSize}

instance Offset "apronSize" VkTilePropertiesQCOM where
  rawOffset = #{offset VkTilePropertiesQCOM, apronSize}

instance Offset "origin" VkTilePropertiesQCOM where
  rawOffset = #{offset VkTilePropertiesQCOM, origin}

#else

module Vulkan.Types.Struct.VkTilePropertiesQCOM where

#endif