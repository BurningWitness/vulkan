{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_dynamic_rendering && VK_NVX_multiview_per_view_attributes

module Vulkan.Types.Struct.VkMultiviewPerViewAttributesInfoNVX where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkMultiviewPerViewAttributesInfoNVX" #-} VkMultiviewPerViewAttributesInfoNVX =
       VkMultiviewPerViewAttributesInfoNVX
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , perViewAttributes :: VkBool32
         , perViewAttributesPositionXOnly :: VkBool32
         }

instance Storable VkMultiviewPerViewAttributesInfoNVX where
  sizeOf    _ = #{size      VkMultiviewPerViewAttributesInfoNVX}
  alignment _ = #{alignment VkMultiviewPerViewAttributesInfoNVX}

  peek ptr = 
    VkMultiviewPerViewAttributesInfoNVX
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"perViewAttributes" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"perViewAttributesPositionXOnly" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"perViewAttributes" ptr val
    pokeField @"perViewAttributesPositionXOnly" ptr val

instance Offset "sType" VkMultiviewPerViewAttributesInfoNVX where
  rawOffset = #{offset VkMultiviewPerViewAttributesInfoNVX, sType}

instance Offset "pNext" VkMultiviewPerViewAttributesInfoNVX where
  rawOffset = #{offset VkMultiviewPerViewAttributesInfoNVX, pNext}

instance Offset "perViewAttributes" VkMultiviewPerViewAttributesInfoNVX where
  rawOffset = #{offset VkMultiviewPerViewAttributesInfoNVX, perViewAttributes}

instance Offset "perViewAttributesPositionXOnly" VkMultiviewPerViewAttributesInfoNVX where
  rawOffset = #{offset VkMultiviewPerViewAttributesInfoNVX, perViewAttributesPositionXOnly}

#else

module Vulkan.Types.Struct.VkMultiviewPerViewAttributesInfoNVX where

#endif