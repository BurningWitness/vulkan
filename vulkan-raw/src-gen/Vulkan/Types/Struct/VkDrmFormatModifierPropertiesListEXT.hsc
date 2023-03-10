{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_image_drm_format_modifier

module Vulkan.Types.Struct.VkDrmFormatModifierPropertiesListEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDrmFormatModifierPropertiesEXT



data {-# CTYPE "vulkan/vulkan.h" "VkDrmFormatModifierPropertiesListEXT" #-} VkDrmFormatModifierPropertiesListEXT =
       VkDrmFormatModifierPropertiesListEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , drmFormatModifierCount :: #{type uint32_t}
         , pDrmFormatModifierProperties :: Ptr VkDrmFormatModifierPropertiesEXT
         }

instance Storable VkDrmFormatModifierPropertiesListEXT where
  sizeOf    _ = #{size      VkDrmFormatModifierPropertiesListEXT}
  alignment _ = #{alignment VkDrmFormatModifierPropertiesListEXT}

  peek ptr = 
    VkDrmFormatModifierPropertiesListEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"drmFormatModifierCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pDrmFormatModifierProperties" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"drmFormatModifierCount" ptr val
    pokeField @"pDrmFormatModifierProperties" ptr val

instance Offset "sType" VkDrmFormatModifierPropertiesListEXT where
  rawOffset = #{offset VkDrmFormatModifierPropertiesListEXT, sType}

instance Offset "pNext" VkDrmFormatModifierPropertiesListEXT where
  rawOffset = #{offset VkDrmFormatModifierPropertiesListEXT, pNext}

instance Offset "drmFormatModifierCount" VkDrmFormatModifierPropertiesListEXT where
  rawOffset = #{offset VkDrmFormatModifierPropertiesListEXT, drmFormatModifierCount}

instance Offset "pDrmFormatModifierProperties" VkDrmFormatModifierPropertiesListEXT where
  rawOffset = #{offset VkDrmFormatModifierPropertiesListEXT, pDrmFormatModifierProperties}

#else

module Vulkan.Types.Struct.VkDrmFormatModifierPropertiesListEXT where

#endif